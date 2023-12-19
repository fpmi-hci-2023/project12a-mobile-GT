//
//  MeetModel.swift
//  GT
//
//  Created by Vlad Muraveiko on 15.11.2023.
//

import Foundation



struct  MeetData: Identifiable {
    let id: Int
    var imageName: String
    var meetName: String
    var description: String
//    var creator: User
    var date: String
    var time: String
    var address: String
}


//enum NetworkError: Error {
//    case badUrl
//    case invalidRequest
//    case badResponse
//    case badStatus
//    case failedToDecodeResponse
//}


//class WebService {
//    func downloadData<T: Codable>(fromURL: String) async -> T? {
//        do {
//            guard let url = URL(string: fromURL) else { throw NetworkError.badUrl }
//            let (data, response) = try await URLSession.shared.data(from: url)
//            guard let response = response as? HTTPURLResponse else { throw NetworkError.badResponse }
//            guard response.statusCode >= 200 && response.statusCode < 300 else { throw NetworkError.badStatus }
//            guard let decodedResponse = try? JSONDecoder().decode(T.self, from: data) else { throw NetworkError.failedToDecodeResponse }
//            
//            return decodedResponse
//        } catch NetworkError.badUrl {
//            print("There was an error creating the URL")
//        } catch NetworkError.badResponse {
//            print("Did not get a valid response")
//        } catch NetworkError.badStatus {
//            print("Did not get a 2xx status code from the response")
//        } catch NetworkError.failedToDecodeResponse {
//            print("Failed to decode response into the given type")
//        } catch {
//            print("An error occured downloading the data")
//        }
//        
//        return nil
//    }
//}

//
//struct Post: Identifiable, Codable {
//    let userId: Int
//    let id: Int
//    let title: String
//    let body: String
//}

//
//{
//    "userId": 1,
//    "id": 1,
//    "title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
//    "body": "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"
//},


//struct Meet: Identifiable, Codable {
//    var id = UUID()
//    var image: String
//    var name: String
//    var description: String
//    var date: String
//    var address: String
////    var creator: User
//
//    enum CodingKeys: String, CodingKey {
//        case id
//        case image
//        case name
//        case description
//        case date
//        case address
////        case creator
//    }
//
//    init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        image = try container.decode(String.self, forKey: .image)
//        name = try container.decode(String.self, forKey: .name)
//        description = try container.decode(String.self, forKey: .description)
//        date = try container.decode(String.self, forKey: .date)
//        address = try container.decode(String.self, forKey: .address)
////        creator = try container.decode(User.self, forKey: .creator)
//    }
//}
//
//@MainActor class MeetViewModel: ObservableObject {
//    @Published var meetData = [Meet]()
//    
//    func fetchData() async {
//        guard let downloadedPosts: [Meet] = await WebService().downloadData(fromURL: "https://jsonplaceholder.typicode.com/posts") else {return}
//        meetData = downloadedPosts
//    }
//}
//
