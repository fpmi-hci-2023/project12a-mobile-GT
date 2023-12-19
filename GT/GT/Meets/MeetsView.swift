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
        
//        func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
//            let currentIndex = Int(scrollView.contentOffset.y / UIScreen.main.bounds.height)
////            if index != currentIndex {
////                index = currentIndex
////        
////            }
//        }
    }
}

struct ImageView: View {
    
    @Binding var data: [MeetData]
    @StateObject var vm = MeetViewModel()
    var body: some View {
        ZStack {
            
            VStack(spacing: 0) {
                ForEach(vm.meetData) { meet in
                    ZStack {
                        if let image = loadImage(from: meet.image) {
                            Image(uiImage: image)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                                .offset(y: -5)
                        }
                    }
                    
                }
                .overlay{
                        
                    Rectangle()
                        .frame(width: phoneWidth, height: phoneHeight)
                        .foregroundStyle(
                            LinearGradient(
                                gradient: Gradient(colors: [Color(hex: 0x151515), .clear]),
                                startPoint: .bottom,
                                endPoint: .top
                            )
                        )
                        .opacity(0.5)
                }
            }
            
            VStack(spacing: 0) {
                ForEach(vm.meetData) { meet in
                    ZStack {
                        Rectangle()
                            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                            .offset(y: -5)
                            .foregroundStyle(.clear)
                        MeetsLabels(meetName: meet.name, address: meet.address, description: meet.description)
                        MeetsControls(time: meet.date, date: meet.date, imageName: meet.image, meetName: meet.name, address: meet.address, description: meet.description)
                        
                    }
                }
            }
            //            .background(
            //                Rectangle()
            //                .frame(width: phoneWidth, height: phoneHeight)
            //                    .foregroundStyle(
            //                        LinearGradient(
            //                            gradient: Gradient(colors: [Color(hex: 0x151515), .clear]),
            //                            startPoint: .bottom,
            //                            endPoint: .top
            //                        )
            //                    ))
            
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
    MeetsView()
}
