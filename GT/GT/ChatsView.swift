//
//  ChatsView.swift
//  GT
//
//  Created by Vlad Muraveiko on 27.10.2023.
//

import SwiftUI

struct ChatsView: View {
    @State private var index: Int = 0
    
    var body: some View {
        
        
        TabView(selection: self.$index) {
            ZStack {
                FirstScreen()
                    .tag(0)
                    .onTapGesture {
                        withAnimation(.default) {
                            self.index = 1
                        }
                    }
                
                SecondScreen()
                    .tag(1)
                    .onTapGesture {
                        withAnimation(.default) {
                            self.index = 0
                        }
                    }
            }
            
        }
    }
}



struct FirstScreen: View {
    var body: some View {
        // Код для вашего первого экрана
        Text("First Screen")
            .frame(width: phoneWidth , height: phoneHeight)
            .background(Color.red)
            .ignoresSafeArea()
           
    }
}

struct SecondScreen: View {
    var body: some View {
        // Код для вашего второго экрана
        Text("Second Screen")
            .frame(width: phoneWidth , height: phoneHeight)
            .background(Color.blue)
            .ignoresSafeArea()
            
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
