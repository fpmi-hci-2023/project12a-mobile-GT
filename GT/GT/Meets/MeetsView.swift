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
                                ImageData(id: 1, imageName: "ava", isPlaying: false),
                                ImageData(id: 2, imageName: "ava", isPlaying: false),
                                ImageData(id: 3, imageName: "david-moum-nbqlWhOVu6k-unsplash", isPlaying: false),
                                ImageData(id: 4, imageName: "ava", isPlaying: false),
                                ImageData(id: 5, imageName: "david-moum-nbqlWhOVu6k-unsplash", isPlaying: false),
                                ImageData(id: 6, imageName: "ava", isPlaying: false)
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
    
    @Binding var data: [ImageData]
    
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
    
    @Binding var data: [ImageData]
    
    var body: some View {
        VStack(spacing: 0) {
            ForEach(self.data) { imageData in
                ZStack {
                    Image(imageData.imageName) // Замените на ваш код отображения изображения, возможно потребуется логика воспроизведения изображения
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                        .offset(y: -4)
                    MeetsLabels()
                    MeetsControls()
                    
                }
                
                // Добавить здесь логику обработки нажатия для воспроизведения изображения или другие действия
            }
        }
    }
}

struct ImageData: Identifiable {
    let id: Int
    let imageName: String
    var isPlaying: Bool
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
