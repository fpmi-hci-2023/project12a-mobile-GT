//
//  ContentView.swift
//  GT
//
//  Created by Vlad Muraveiko on 25.10.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab: Tab = .meets
    var meets: Meet
    var body: some View {
        NavigationView {
            ZStack {

                if selectedTab == .meets {
                    MeetsView(meets: meets)
                } else if selectedTab == .calendar {
                    CalendarView()
                } else if selectedTab == .chats {
                    ChatsView()
                } else if selectedTab == .profile { 
                    ProfileView()
                }
                TabBarView(selectedTab: $selectedTab)
                
                
//                TabView(selection: $selectedTab) {
//                    MeetsView()
//                        .tag(Tab.meets)
//                    CalendarView()
//                        .tag(Tab.calendar)
//                    ChatsView()
//                        .tag(Tab.chats)
//                    ProfileView()
//                        .tag(Tab.profile)
//                }
//                ZStack {
//    
//                    TabBarView(selectedTab: $selectedTab)
//                }
            }
           
        }
        .preferredColorScheme(.dark)
        .navigationBarHidden(true)
    }
}

#Preview {
    ContentView(meets: Meet(image: "david-moum-nbqlWhOVu6k-unsplash", meetName: "Play tennis", description: "I want to play tennis with great people.", creator: User(userName: "Anna Chereshnya", userImage: "ava"), date: "17 november", time: "12:00", address: "Minsk"))
}
