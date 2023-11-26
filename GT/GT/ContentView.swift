//
//  ContentView.swift
//  GT
//
//  Created by Vlad Muraveiko on 25.10.2023.
//

import SwiftUI

struct ContentView: View {
    @State var selectedTab: Tab = .meets
    var body: some View {
        NavigationView {
            ZStack {

                if selectedTab == .meets {
                    MeetsView()
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
    ContentView()
}
