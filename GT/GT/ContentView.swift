//
//  ContentView.swift
//  GT
//
//  Created by Vlad Muraveiko on 25.10.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab: Tab = .meets

    var body: some View {
        NavigationView {
            ZStack {
                TabView(selection: $selectedTab) {
                    MeetsView()
                    .tag(Tab.meets)
                    CalendarView()
                        .tag(Tab.calendar)
                    ChatsView()
                        .tag(Tab.chats)
                    ProfileView()
                        .tag(Tab.profile)
                }
                VStack {
                    Spacer()
                    TabBarView(selectedTab: $selectedTab)
                }
            }
           
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    ContentView()
}
