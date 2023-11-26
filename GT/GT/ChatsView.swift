//
//  ChatsView.swift
//  GT
//
//  Created by Vlad Muraveiko on 27.10.2023.
//

import SwiftUI

struct ChatsView: View {
    var body: some View {
//        @State var selectedIndex = 0
        ZStack {
            VideoView()
        }
    
    }
    
    
    @ViewBuilder
    func VideoView()->some View {
//        var meets: Meet
        GeometryReader { proxy in
            let size = proxy.size
            
            TabView {
                ForEach(DummyPhoto.photos, id: \.id) { tiktok in
                    tiktok.photo
                        .resizable().clipped()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: size.width)
                        
//                        .overlay {
//                            TikTokControls(commentsButtonAction: {isShowingComments = true})
//                                .padding(.bottom)
//                        }
                        .rotationEffect(.init(degrees: -90))
                        .ignoresSafeArea(.all)
                        
                    
                }
            }
            .rotationEffect(.init(degrees: 90))
            .frame(width: size.height)
            .tabViewStyle(.page(indexDisplayMode: .never))
            .frame(width: size.width)
        }
        .ignoresSafeArea(.all)
    }
}






#Preview {
    ChatsView()
}



//struct ChatsView: View {
//    @State private var offset: CGFloat = .zero
//       @State private var currentIndex: Int = 0
//
//       let screenCount = 2
//       let screenHeight: CGFloat = UIScreen.main.bounds.height
//    @State private var currentPage = 0
//    var body: some View {
//        
//        TabView(selection: $currentPage) {
//                  Text("First Screen")
//                      .tag(0)
//                  Text("Second Screen")
//                      .tag(1)
//                  Text("Third Screen")
//                      .tag(2)
//              }
//              .tabViewStyle(PageTabViewStyle())
//              .gesture(
//                  DragGesture()
//                      .onChanged { value in
//                          if value.translation.height < 0 && value.translation.height.magnitude > UIScreen.main.bounds.height / 3 {
//                              currentPage = min(currentPage + 1, 2)
//                          } else if value.translation.height > 0 && value.translation.height.magnitude > UIScreen.main.bounds.height / 3 {
//                              currentPage = max(currentPage - 1, 0)
//                          }
//                      }
//              )
//    }
//}


