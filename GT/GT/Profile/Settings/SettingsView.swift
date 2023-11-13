//
//  SettingsView.swift
//  GT
//
//  Created by Vlad Muraveiko on 13.11.2023.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        ZStack {
            Color(hex: 0x151515).ignoresSafeArea()
            HeaderNavigation(navLabel: "Settings")
            
        }.navigationBarBackButtonHidden(true)
    }
}

#Preview {
    SettingsView()
}
