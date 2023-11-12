//
//  TabBarView.swift
//  GT
//
//  Created by Vlad Muraveiko on 27.10.2023.
//

import SwiftUI

var phoneHeight = UIScreen.main.bounds.height
var phoneWidth = UIScreen.main.bounds.width
var tabBarHeight = UIScreen.main.bounds.height / 14
var tabBarHeightDivide3 = UIScreen.main.bounds.height / 33


enum Tab: String, CaseIterable {
    case meets
    case calendar
    case chats
    case profile
    
}

struct TabBarView: View {
    @Binding var selectedTab: Tab
    
   
    
    //Изображение профиля
    var profileImage = "david-moum-nbqlWhOVu6k-unsplash"
    
    private var fillImage: String {
        selectedTab.rawValue + ".fill"
    }


    var body: some View {
        VStack {
            Spacer()
            ZStack {
              Rectangle()
                    .frame(width: phoneWidth * 0.86 , height: tabBarHeight)
                    .foregroundStyle(.ultraThinMaterial)
                    .cornerRadius(40)
                
                HStack {
                    Spacer()
                    
                    ForEach(Tab.allCases, id: \.rawValue) { tab in
                        
                        if tab == .profile {
                            Image(profileImage)
                                .resizable()
                                .frame(width: tabBarHeight / 2.2, height: tabBarHeight / 2.2)
                                .clipShape(Circle())
                       
                                .onTapGesture {
                                    selectedTab = tab
                                }
                        } else {
                            Image(selectedTab == tab ? fillImage : tab.rawValue)
                                .resizable()
                                .frame(width: tabBarHeight / 2.2, height: tab == .chats ? tabBarHeight / 2.3 : tabBarHeight / 2.2 )
                                .onTapGesture {
                                    selectedTab = tab
                                }
                        }
                        if tab == .calendar {
                            Spacer().frame(width: tabBarHeight)
                        }
                    Spacer()
                        
                }
            }
            .frame(width: phoneWidth * 0.86 , height: tabBarHeight)
                
                
                HStack {
                    Spacer()
                    
                    Button {
                    
                    } label: {
                        ZStack {
                            Rectangle()
                                .frame(width: tabBarHeight / 1.5, height: tabBarHeight / 2)
                                .cornerRadius(20)
                                .foregroundStyle(.white)
                            Image(systemName: "plus")
                                .foregroundColor(Color(hex: 0xD2BDA8))
                                .frame(width: tabBarHeight / 4, height: tabBarHeight / 4)
                        }
                    }
                    Spacer()
                }
            }
        }
        .padding(.bottom, 20)
        .ignoresSafeArea()
    }
}

#Preview {
    TabBarView(selectedTab: .constant(.meets))
}





//            HStack {
//                ForEach(Tab.allCases, id: \.rawValue) { tab in
//                    Spacer()
//
//                    Image(selectedTab == tab ? fillImage : tab.rawValue)
//                        .resizable()
//                        .frame(width: tabBarHeight / 2.2, height: tabBarHeight / 2.2)
//                        .onTapGesture {
//                        selectedTab = tab
//                        }
//
//                    if tab == .calendar {
//                        Spacer().frame(width: tabBarHeight )
//                    }
//                }
//
//                Spacer()
//            }
