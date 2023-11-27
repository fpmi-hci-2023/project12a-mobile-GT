//
//  MeetsView.swift
//  GT
//
//  Created by Vlad Muraveiko on 27.10.2023.
//

import SwiftUI

struct MeetsView: View {
   
    
    @State private var index = 0
    @State private var top = 0
    @State private var data = [
        MeetData(id: 1, imageName: "test2", meetName: "Play tennis", description: "I wanna play tennis I wanna play tennis I wanna play tennis I wanna play tennis", date: "April, 19", time: "14:00", address: "Yakub Kolas Street"),
        MeetData(id: 2, imageName: "david-moum-nbqlWhOVu6k-unsplash", meetName: "Afterparty", description: "I wanna disco", date: "April, 19", time: "14:00", address: "Nemiga 7"),
        MeetData(id: 3, imageName: "ava", meetName: "Play chess", description: "I wanna play chess I wanna play chess I wanna play chess", date: "June, 27", time: "10:00", address: "Yakub Kolas Street"),
        MeetData(id: 4, imageName: "test2", meetName: "Play golf", description: "I wanna play golf I wanna play golf I wanna play golf ", date: "April, 19", time: "14:00", address: "Yakub Kolas Street 23"),
        MeetData(id: 5, imageName: "ava", meetName: "Business lecture", description: "I wanna Business lecture I wanna Business lecture", date: "November, 12", time: "12:00", address: "Minsk"),
        MeetData(id: 6, imageName: "david-moum-nbqlWhOVu6k-unsplash", meetName: "Play ping-pong", description: "I wanna play ping-pong", date: "April, 19", time: "18:00", address: "Yakub Kolas Street"),
        MeetData(id: 7, imageName: "ava", meetName: "Karaoke", description: "I wanna play tennis", date: "December, 8", time: "11:00", address: "Yakub Kolas Street"),
                             ]
    
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationView {
            ZStack {
                
                ImageScrollView(data: self.$data)
                    .edgesIgnoringSafeArea(.all)
                
                FilterButton()
               
                
            }
            .background(Color.black.edgesIgnoringSafeArea(.all))
            
        }
    }
}

struct ImageScrollView: UIViewRepresentable {
    
    @Binding var data: [MeetData]
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(parent: self)
    }
    
    func makeUIView(context: Context) -> UIScrollView {
        let view = UIScrollView()
        let childView = UIHostingController(rootView: ImageView(data: self.$data))
        childView.view.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * CGFloat(self.data.count))
    
        view.contentSize = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * CGFloat(self.data.count))
        view.addSubview(childView.view)
        
        view.showsVerticalScrollIndicator = false
        view.showsHorizontalScrollIndicator = false
        view.contentInsetAdjustmentBehavior = .never
        view.isPagingEnabled = true
        view.delegate = context.coordinator
        view.bounces = false
        return view
    }
    
    func updateUIView(_ uiView: UIScrollView, context: Context) {
        uiView.contentSize = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * CGFloat(self.data.count))
    }
    
    class Coordinator: NSObject, UIScrollViewDelegate {
        
        var parent: ImageScrollView
        var index = 0
        
        init(parent: ImageScrollView) {
            self.parent = parent
        }
        
        func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
            let currentIndex = Int(scrollView.contentOffset.y / UIScreen.main.bounds.height)
            if index != currentIndex {
                index = currentIndex
                // Поместите здесь логику воспроизведения изображения, например, через обновление данных isPlaying и так далее
            }
        }
    }
}

struct ImageView: View {
    
    @Binding var data: [MeetData]
    
    var body: some View {
        
        VStack(spacing: 0) {
            ForEach($data) { $meetData in
                ZStack {
                    Image(meetData.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                        .offset(y: -5)
                    MeetsLabels(meetName: meetData.meetName, address: meetData.address, description: meetData.description)
                    MeetsControls(time: meetData.time, date: meetData.date, imageName: meetData.imageName, meetName: meetData.meetName, address: meetData.address, description: meetData.description)
                    
                }
                
            }
        }
    }
}

    
#Preview {
    MeetsView()
}








//struct SwiftUIView: View {
//    @State private var showAlert = false;
//
//    var body: some View {
//        Button(action: { self.showAlert = true }) {
//            Text("Show alert")
//        }.alert(
//            isPresented: $showAlert,
//            content: { Alert(titzle: Text("Hello world")) }
//        )
//    }
//}


//@ViewBuilder
//func VideoView()->some View {
////        var meets: Meet
//    GeometryReader { proxy in
//        let size = proxy.size
//
//        TabView {
//            ForEach(DummyPhoto.photos, id: \.id) { tiktok in
//                tiktok.photo
//                    .resizable().clipped()
//                    .aspectRatio(contentMode: .fill)
//                    .frame(width: size.width)
//
//                    .overlay {
//                        MeetsControls()
//                            .padding(.bottom, phoneHeight / 8)
//                    }
//                    .rotationEffect(.init(degrees: -90))
//                    .ignoresSafeArea(.all)
//
//
//            }
//        }
//        .rotationEffect(.init(degrees: 90))
//        .frame(width: size.height)
//
//        .tabViewStyle(.page(indexDisplayMode: .never))
//        .frame(width: size.width)
//    }
//    .ignoresSafeArea(.all)
//}
//}
//struct MeetsView: View {
//
//    @Environment(\.presentationMode) var presentationMode
//    var body: some View {
//        NavigationView {
//
//            ZStack {
//                //                MeetsDataBase()
//                Swiper()
//                FilterButton()
//                //                MeetsLabels(meets: meets)
//                //                MeetsButtons()
//            }
//
//        }
//    }
//}
