//
//  TestApiView.swift
//  GT
//
//  Created by Vlad Muraveiko on 19.12.2023.
//

import SwiftUI

//struct Meet: Identifiable, Codable {
//    var id = UUID()
//    var image: String
//    var name: String
//    var description: String
//    var date: String
//    var address: String
////    var creator: User

let webUrl = "https://qlxpx5f6-32773.euw.devtunnels.ms/Event?page=0"

struct MeetModel: Identifiable, Codable {
    let id: Int
    let image: String
    let name: String
    let description: String
    let date: String
    let address: String

}

func loadImage(from base64String: String) -> UIImage? {
        let cleanedString = base64String
            .replacingOccurrences(of: "data:image/png;base64,", with: "")
            .replacingOccurrences(of: "data:image/jpeg;base64,", with: "")
        
        guard let imageData = Data(base64Encoded: cleanedString) else { return nil }
        return UIImage(data: imageData)
    }


enum NetworkError: Error {
    case badUrl
    case invalidRequest
    case badResponse
    case badStatus
    case failedToDecodeResponse
}

class WebService: Codable {
    func downloadData<T: Codable>(fromURL: String) async -> T? {
        do {
            guard let url = URL(string: fromURL) else { throw NetworkError.badUrl }
            let (data, response) = try await URLSession.shared.data(from: url)
            guard let response = response as? HTTPURLResponse else { throw NetworkError.badResponse }
            guard response.statusCode >= 200 && response.statusCode < 300 else { throw NetworkError.badStatus }
            guard let decodedResponse = try? JSONDecoder().decode(T.self, from: data) else { throw NetworkError.failedToDecodeResponse }
            
            return decodedResponse
        } catch NetworkError.badUrl {
            print("There was an error creating the URL")
        } catch NetworkError.badResponse {
            print("Did not get a valid response")
        } catch NetworkError.badStatus {
            print("Did not get a 2xx status code from the response")
        } catch NetworkError.failedToDecodeResponse {
            print("Failed to decode response into the given type")
        } catch {
            print("An error occured downloading the data")
        }
        
        return nil
    }
}

class MeetViewModel: ObservableObject {
    @Published var meetData = [MeetModel]()
    
    func fetchData() async {
        guard let downloadedPosts: [MeetModel] = await WebService().downloadData(fromURL: webUrl) else {return}
        meetData = downloadedPosts
    }
}

struct TestApiView: View {
    @StateObject var vm = MeetViewModel()

    var body: some View {
      
        List(vm.meetData) { meet in
                    HStack {
                        VStack(alignment: .leading) {
                            if let image = loadImage(from: meet.image) {
                                Image(uiImage: image)
                                    .resizable()
                                    .frame(width: 200, height: 200)
                            }
                 
                    Text(meet.address)
                        .bold()
                        .lineLimit(1)
                    
                 
                    
                    Text(meet.name)
                        .bold()
                        .lineLimit(1)
                    
                    Text(meet.description)
                        .font(.caption)
                        .foregroundColor(.secondary)
                        .lineLimit(2)
                }
            }
        }
        .onAppear {
            if vm.meetData.isEmpty {
                Task {
                    await vm.fetchData()
                }
            }
        }
    }
   
}


#Preview {
    TestApiView()
}
