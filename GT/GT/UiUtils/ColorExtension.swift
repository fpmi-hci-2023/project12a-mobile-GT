//
//  ColorExtension.swift
//  GT
//
//  Created by Vlad Muraveiko on 27.10.2023.
//


import SwiftUI


//указывать цвет хексом
extension Color {
    init(hex: UInt, alpha: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha
        )
    }
}
