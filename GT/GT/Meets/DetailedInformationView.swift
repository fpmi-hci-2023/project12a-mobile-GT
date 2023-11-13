//
//  DetailedInformationView.swift
//  GT
//
//  Created by Vlad Muraveiko on 04.11.2023.
//

import SwiftUI

struct DetailedInformationView: View {
    var body: some View {
        ZStack {
            Color(hex: 0x151515).ignoresSafeArea()
            HeaderNavigation(navLabel: "Detailed")
            
        }
    }
}

#Preview {
    DetailedInformationView()
}
