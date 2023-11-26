//
//  GTApp.swift
//  GT
//
//  Created by Vlad Muraveiko on 25.10.2023.
//

import SwiftUI

@main
struct GTApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(meets: Meet(image: "david-moum-nbqlWhOVu6k-unsplash", meetName: "Play tennis", description: "I want to play tennis with great people.", creator: User(userName: "Anna Chereshnya", userImage: "ava"), date: "17 november", time: "12:00", address: "Minsk"))
        }
    }
}
