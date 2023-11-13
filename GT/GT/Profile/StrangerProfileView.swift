//
//  StrangerProfileView.swift
//  GT
//
//  Created by Vlad Muraveiko on 10.11.2023.
//

import SwiftUI

struct StrangerProfileView: View {
    var avatar = "ava"
    var name = "Fox"
    var surname = "Leslie"
    var age = "23"
    var username = "@olegtinkov"
    var columns = Array(repeating: GridItem(.flexible(), spacing: 20), count: 2)
   

    @State var selection: Int = 0
        private let items: [String] = ["Created", "Visited"]
    var body: some View {
      
            ZStack {
        
                Color(hex: 0x151515).ignoresSafeArea()
                VStack {
                    
                    Image(avatar)
                        .resizable()
                        .frame(height: phoneWidth * 1.2)
                        .overlay {
                            VStack {
                                HStack {
                                    CloseViewArrow()
                                    Spacer()
                                    EllipsisButtonStranger()
                                }
                                .padding(.top, phoneWidth * 0.15)
                                .padding(.horizontal, 10)
                                Spacer()
                                ZStack {
                                    Rectangle()
                                        .frame(height: phoneHeight * 0.16)
                                        .foregroundStyle(
                                            LinearGradient(
                                                gradient: Gradient(colors: [Color(hex: 0x151515), .clear]),
                                                startPoint: .bottom,
                                                endPoint: .top
                                            )
                                        )
                                    VStack(spacing: 0) {
                                        HStack {
                                            Text(surname)
                                                .font(.custom("NeueMachina-Bold", size: UIScreen.main.bounds.height / 20))
                                                .foregroundStyle(.white)
                                            
                                            Spacer()
                                        }
                                        .padding(.horizontal, phoneWidth * 0.06)
                                        
                                        HStack {
                                            Text(name)
                                                .font(.custom("NeueMachina-Bold", size: UIScreen.main.bounds.height / 20))
                                                .foregroundStyle(.white)
                                            
                                            Text(age)
                                                .font(.custom("geometria_bold", size: UIScreen.main.bounds.height / 30))
                                                .foregroundStyle(.white)
                                                .padding(.leading, 10)
                                                .padding(.top, 3)
                                            
                                            Spacer()
                                        }
                                        
                                        .padding(.horizontal, phoneWidth * 0.06)
                                        
                                    }
                                }
                            }
                        }
                    
                    HStack {
                        Text("About")
                            .font(.custom("Poppins-light", size: UIScreen.main.bounds.height / 34))
                            .foregroundStyle(.white)
                            .padding(.top, 8)
                        
                        Spacer()
                    }
                    .padding(.horizontal, phoneWidth * 0.06)
                    
                    HStack {
                        Text("AboutAb outAboutA boutA boutAbo utAbo utAbo utAbou tAboutA boutAb outAbout AboutAb outAbou tAbou tAbout Ab outAbou tAbout About AboutAboutA b outAb out")
                            .font(.custom("Poppins-light", size: UIScreen.main.bounds.height / 54))
                            .foregroundStyle(.white)
                        
                        
                        Spacer()
                    }
                    .padding(.horizontal, phoneWidth * 0.06)
                    
                    HStack {
                        Text("Interests")
                            .font(.custom("Poppins-light", size: UIScreen.main.bounds.height / 34))
                            .foregroundStyle(.white)
                            .padding(.top, 2)
                        
                        Spacer()
                    }
                    .padding(.horizontal, phoneWidth * 0.06)
                    
                    InterestsView()
                    
                    
                    Spacer()
                }
            }.ignoresSafeArea()
            .navigationBarBackButtonHidden(true)
       
        
    }
}
//        ZStack {
//            Color(hex: 0x151515)
//                .ignoresSafeArea()
//            
//            ScrollView {
//               
//                //avatar
//                VStack {
//                    ZStack {
//                        Image(avatar)
//                            .resizable()
//                            .frame(height: phoneWidth * 1.2)
//                        
//                        VStack {
//                            HStack {
//                                CloseViewArrow()
//                                    .padding(.top, phoneWidth * 0.15)
//                                Spacer()
//                                EllipsisButtonStranger()
//                                    .padding(.top, phoneWidth * 0.15)
//                            }
//                            .padding(.horizontal)
//                            Spacer()
//                        }
//                       
//                    }
//                    HStack {
//                        Text(name)
//                            .font(.custom("Poppins-Medium", size: UIScreen.main.bounds.height / 34))
//                            .foregroundStyle(Color(hex: 0xD2BDA8))
//                            .font(.system(size: 26))
//                        
//                        Spacer()
//                    }
//                    .padding(.top, 14)
//                    .padding(.horizontal, 10)
//                    
//                    HStack {
//                        Text(username)
//                            .font(.custom("Poppins-light", size: UIScreen.main.bounds.height / 44))
//                            .foregroundStyle(.gray)
//                            .font(.system(size: 26))
//                        Spacer()
//                        AddFriendButton()
//                            .padding(.horizontal, 10)
//                    }
//                    .padding(.horizontal, 10)
//                
//                    SegmentControlProfile(items: self.items, selection: self.$selection)
//                        .padding(.horizontal, 6)
//                    
//                    if selection == 0 {
//                        LazyVGrid(columns: columns, spacing: 30) {
//                            ForEach(visited_data) { cards in
//                                CardView(title: cards.title , image: cards.image, date: cards.data, time: cards.time)
//                            }
//                        }
//                        .padding(.horizontal, 10)
//                        
//                    } else {
//                        LazyVGrid(columns: columns, spacing: 30) {
//                            ForEach(created_data) { cards in
//                                CardView(title: cards.title , image: cards.image, date: cards.data, time: cards.time)
//                            }
//                        }
//                        .padding(.horizontal, 10)
//                    }
//                }
//            }
//        }
//        .navigationBarBackButtonHidden(true)
//
//        .ignoresSafeArea()
//    }
//}

#Preview {
    StrangerProfileView()
}


// MARK: Добавить в друзья
struct AddFriendButton: View {
    var body: some View {
     
        Button {
            
            
        } label: {
            ZStack {
              
                Text("Add Friend")
                    .foregroundStyle(Color(hex: 0x151515))
                    .font(.custom("Poppins-Medium", size: UIScreen.main.bounds.height / 44))
                    .background {
                        Capsule()
                            .frame(width: phoneWidth * 0.3 , height: phoneWidth * 0.1)
                            .foregroundStyle(Color(hex: 0xD2BDA8))
                    }
                 
            }
        }
    }
}

struct EllipsisButtonStranger: View {
    var body: some View {
        Menu {
                    Button {
                    } label: {
                        Label("Share", systemImage: "arrow.uturn.forward")
                    }
                    Button(role: .destructive) {
                    } label: {
                        Label("Report", systemImage: "exclamationmark.triangle")
                        
                    }
                    Button(role: .destructive) {
                    } label: {
                        Label("Block", systemImage: "circle.slash")
                            
                    }
                } label: {
                    ZStack {
                        Circle()
                            .frame(width: phoneWidth * 0.1 , height: phoneWidth * 0.1)
                            .foregroundStyle(.ultraThinMaterial)
                        Image(systemName: "ellipsis")
                            .foregroundColor(.white)
                            .fontWeight(.light)
                            .font(.system(size: UIScreen.main.bounds.height / 40))
                            .rotationEffect(.degrees(90))
                    }
                }
          
                
//        Button {
//            // если свой профиль, то только поделиться, если чужой,
//            //то поделить и пожаловаться
//        } label: {
//            ZStack {
//                Circle()
//                    .frame(width: phoneWidth * 0.1 , height: phoneWidth * 0.1)
//                    .foregroundStyle(.ultraThinMaterial)
//                Image(systemName: "ellipsis")
//                    .resizable()
//                    .frame(width: 22, height: 5)
//                    .foregroundColor(.white)
//                    .rotationEffect(.degrees(90))
//            }
//        }
    }
}
