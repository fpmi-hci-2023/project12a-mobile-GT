//
//  StrangerProfileView.swift
//  GT
//
//  Created by Vlad Muraveiko on 10.11.2023.
//

import SwiftUI

struct StrangerProfileView: View {
    var avatar = "ava"
    var name = "Oleg Tinkov"
    var username = "@olegtinkov"
    var columns = Array(repeating: GridItem(.flexible(), spacing: 20), count: 2)
    @State var selection: Int = 0
        private let items: [String] = ["Created", "Visited"]
    var body: some View {
        ZStack {
            Color(hex: 0x151515)
                .ignoresSafeArea()
            ScrollView {
                
                //avatar
                VStack {
                    ZStack {
                        Image(avatar)
                            .resizable()
                            .frame(height: phoneWidth * 1.2)
                        
                        VStack {
                            HStack {
                                Spacer()
                                EllipsisButton()
                                    .padding(.top, phoneWidth * 0.15)
                            }
                            .padding(.horizontal)
                            Spacer()
                        }
                    }
                    HStack {
                        Text(name)
                            .font(.custom("Poppins-Medium", size: UIScreen.main.bounds.height / 34))
                            .foregroundStyle(Color(hex: 0xD2BDA8))
                            .font(.system(size: 26))
                        
                        Spacer()
                    }
                    .padding(.top, 14)
                    .padding(.horizontal, 10)
                    
                    HStack {
                        Text(username)
                            .font(.custom("Poppins-light", size: UIScreen.main.bounds.height / 44))
                            .foregroundStyle(.gray)
                            .font(.system(size: 26))
                        Spacer()
                        AddFriendButton()
                            .padding(.horizontal, 10)
                    }
                    .padding(.horizontal, 10)
                
                    SegmentControlProfile(items: self.items, selection: self.$selection)
                        .padding(.horizontal, 6)
                    
                    if selection == 0 {
                        LazyVGrid(columns: columns, spacing: 30) {
                            ForEach(visited_data) { cards in
                                CardView(title: cards.title , image: cards.image, date: cards.data, time: cards.time)
                            }
                        }
                        .padding(.horizontal, 10)
                        
                    } else {
                        LazyVGrid(columns: columns, spacing: 30) {
                            ForEach(created_data) { cards in
                                CardView(title: cards.title , image: cards.image, date: cards.data, time: cards.time)
                            }
                        }
                        .padding(.horizontal, 10)
                    }
                }
            }
        }
        .ignoresSafeArea()
    }
}

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
