//  Swiper.swift
//  GT
//
//  Created by Vlad Muraveiko on 14.11.2023.
//
//
import SwiftUI

struct Swiper: View {

    var body: some View {
        ZStack(alignment: .top) {
            Image("wallpaper")
                .resizable()
                .scaledToFill()
                .clipped()
                .ignoresSafeArea()
            
        }
    }
}


#Preview {
    Swiper()
}
