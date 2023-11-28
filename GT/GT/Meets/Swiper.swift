//  Swiper.swift
//  GT
//
//  Created by Vlad Muraveiko on 14.11.2023.
//
//
//import SwiftUI
//struct ProfileContentView: View {
//    @Binding var tabSelection: Int
//    let tabScrollViewHeight: CGFloat?
//
//    var body: some View {
//        LazyVStack(spacing: 0) {
//            TabButtons(tabSelection: tabSelection)
//                .frame(height: 45)
//            
//            TabView(selection: $tabSelection) {
//                
//                ScrollView {
//                    UserPostsGridView()
////                    Text("1")
//                }
//                .tag(1)
//                .scrollDisabled(true)
//                
//                ScrollView {
////                    Text("2")
//                    UserPostsGridView()
//                }
//                .tag(2)
//                .scrollDisabled(true)
//                
//                ScrollView {
////                    Text("3")
//                    UserPostsGridView()
//                }
//                .tag(3)
//                .frame(maxHeight: .infinity, alignment: .top)
//                
//                ScrollView {
////                    Text("4")
//                    UserPostsGridView()
//                }
//                .tag(4)
//                .frame(maxHeight: .infinity, alignment: .top)
//            }
//            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
//            .frame(height: tabScrollViewHeight)
//        }
//    }
//}
//
//
//struct TabButtons : View {
//    @State var tabSelection : Int
//  
//    var body: some View {
//        HStack {
//            ForEach(1...4, id: \.self) { tabItem in
//                VStack {
//                    TabItemView(tabSelection: tabSelection, tabId: tabItem)
////                    Text("ghj")
//                        .frame(maxWidth: .infinity)
//                        .padding(.bottom, 5)
//                        .overlay {
//                            if tabItem == tabSelection {
//                                Rectangle()
//                                    .frame(height: 1.5)
//                                    .padding(.horizontal)
//                                    .padding(.vertical, 5)
//                                    .offset(y: 12.5)
//                            }
//                        }
//                }
//            }
//        }
//        .padding(.top, 15)
//        .padding(.bottom, 5)
//        
//    }
//}
//
//
//struct TabItemView : View {
//    @State var tabSelection : Int
//    @State var tabId : Int
//    var body: some View {
//        let imageName: String = {
//            switch tabId {
//            case 1: return "rectangle.grid.3x2.fill"
//            case 2: return "lock"
//            case 3: return "bookmark"
//            case 4: return "heart"
//            default: return "heart"
//            }
//        }()
//        Button {
//            withAnimation {
//                tabSelection = tabId
//            }
//        } label: {
//            Image(systemName: imageName)
//        }
//    }
//}
//
//
//struct UserPostsGridView: View {
//    let columns = Array(Array(repeating: GridItem(.flexible(), spacing: 1), count: 3))
//    
//    var body: some View {
//        LazyVGrid(columns: columns, spacing: 1) {
//            ForEach(1...10, id: \.self) { tiktok in
//                ProfileGridItem()
//            }
//        }
//    }
//}
//
//struct ProfileGridItem: View {
//    var body: some View {
//        Rectangle()
//            .aspectRatio(0.75, contentMode: .fit)
//            .foregroundColor(.black)
//            .overlay {
//                VStack {
//                    Spacer()
//                    HStack {
//                        Image(systemName: "arrowtriangle.right")
//                        Text("73.3k")
//                    }
//                    .frame(maxWidth: .infinity, alignment: .leading)
//                    .font(.caption)
//                    .fontWeight(.bold)
//                }
//                .padding(5)
//                .foregroundColor(.white)
//            }
//    }
//}
//
//#Preview {
//    ProfileContentView(tabSelection: .constant(2), tabScrollViewHeight: 700)
//}







//
//struct Swiper : View {
//    var body: some View {
////        @ObservedObject var viewModel = TikTokViewModel()
////        @State var isShowingComments = false
//        @State var selectedIndex = 0
//        ZStack {
//            SwiperView()
//        }
//        
//    }
//    
//    
//    @ViewBuilder
//    func SwiperView()->some View {
//        GeometryReader { proxy in
//            let size = proxy.size
//            
//            TabView {
//                ForEach(DummyPhoto.photos, id: \.id) { tiktok in
//                    tiktok.photo
//                        .resizable().clipped()
//                        .aspectRatio(contentMode: .fill)
//                        .frame(width: size.width)
//                        .clipped()
//                        .overlay {
//                            MeetsControls()
////                            MeetsControls(commentsButtonAction: {isShowingComments = true})
//                                .padding(.bottom, phoneHeight / 8)
//                        }
//                        .rotationEffect(.init(degrees: -90))
//                        .ignoresSafeArea(.all)
//                    
//                    
//                }
//            }
//            .rotationEffect(.init(degrees: 90))
//            .frame(width: size.height)
//            .tabViewStyle(.page(indexDisplayMode: .never))
//            .frame(width: size.width)
//        }
//        .ignoresSafeArea(.all)
//    }
//}
//
//#Preview {
//    Swiper()
//}





//protocol ViewLifecycleDelegate {
//func onAppear()
//func onDisappear()
//}
//
//struct Player : View {
//    var image: Image
//    var body: some View {
//        image
//            .resizable()
//            .aspectRatio(contentMode: .fill)
//            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
//            .clipped()
//        
//    }
//}
//
//struct PlayerView : View {
//    @Binding var images : [Image]
//    let lifecycleDelegate: ViewLifecycleDelegate?
//    var body: some View{
//        VStack(spacing: 0){
//            ForEach(0..<self.images.count){ i in
//                ZStack {
//                    Player(image: self.images[i])
//                        .offset(y: -4)
////                    MeetsView(meets: MeetsData.meets)
//                }
//            }
//        }
//        .onAppear {
//            self.lifecycleDelegate?.onAppear()
//        }
//        .onDisappear {
//            self.lifecycleDelegate?.onDisappear()
//        }
//    }
//}
//
//struct PlayerPageView : UIViewRepresentable {
//    func makeCoordinator() -> Coordinator {
//        return PlayerPageView.Coordinator(parent1: self)
//    }
//    
//    @Binding var images : [Image]
//    
//    func makeUIView(context: Context) -> UIScrollView{
//        
//        let view = UIScrollView()
//        
//        let childView = UIHostingController(rootView: PlayerView(images: self.$images, lifecycleDelegate: context.coordinator))
//        childView.view.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * CGFloat((images.count)))
//        view.contentSize = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * CGFloat((images.count)))
//        
//        view.addSubview(childView.view)
//        view.showsVerticalScrollIndicator = false
//        view.showsHorizontalScrollIndicator = false
//        view.contentInsetAdjustmentBehavior = .never
//        view.isPagingEnabled = true
//        view.delegate = context.coordinator
//        return view
//    }
//    
//    func updateUIView(_ uiView: UIScrollView, context: Context) {
//        uiView.contentSize = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * CGFloat((images.count)))
//        
//        for i in 0..<uiView.subviews.count{
//            uiView.subviews[i].frame = CGRect(x: 0, y: 0,width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * CGFloat((images.count)))
//        }
//    }
//    
//    class Coordinator : NSObject, UIScrollViewDelegate, ViewLifecycleDelegate{
//        
//        var parent : PlayerPageView
//        var index = 0
//        
//        init(parent1 : PlayerPageView) {
//            parent = parent1
//        }
//        
//        func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
//            let currentIndex = Int(scrollView.contentOffset.y / UIScreen.main.bounds.height)
//            
//            if index != currentIndex{
//                index = currentIndex
//            }
//        }
//        
//        func onAppear() {
//            // Handle onAppear event
//        }
//        
//        func onDisappear() {
//            // Handle onDisappear event
//        }
//    }
//}
//
//struct ReelsContainerView: View {
//    @State private var index = 0
//    @State private var top = 0
//    @State private var images = MeetsData().images
//    
//    var body: some View{
//        ZStack{
//            PlayerPageView(images: self.$images)
//        }
//        .background(Color.black.edgesIgnoringSafeArea(.all))
//        .edgesIgnoringSafeArea(.all)
//    }
//}
//
//
//struct ReelsView_Previews: PreviewProvider {
//    static var previews: some View {
//        ReelsContainerView()
//    }
//}

