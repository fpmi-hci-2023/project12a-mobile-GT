//
//  MeetsData.swift
//  GT
//
//  Created by Vlad Muraveiko on 15.11.2023.
//

import Foundation
import SwiftUI


struct MeetsData {
    
    let meets: [Meet] = [
        Meet(image: "david-moum-nbqlWhOVu6k-unsplash", meetName: "Play tennis", description: "I want to play tennis with great people.", creator: User(userName: "Anna Chereshnya", userImage: "ava"), date: "17 november", time: "12:00", address: "Minsk"),
        Meet(image: "david-moum-nbqlWhOVu6k-unsplash", meetName: "Guitar ", description: "I want to play Guitar with great people.", creator: User(userName: "Anna Chereshnya", userImage: "ava"), date: "17 november", time: "12:00", address: "Minsk, Восток"),
        Meet(image: "david-moum-nbqlWhOVu6k-unsplash", meetName: "Chess", description: "I want to play Chess with great people.", creator: User(userName: "Anna Chereshnya", userImage: "ava"), date: "17 november", time: "12:00", address: "Minsk, Площадь Ленина"),
        Meet(image: "david-moum-nbqlWhOVu6k-unsplash", meetName: "Lecture", description: "I want to play tennis with great people.", creator: User(userName: "Anna Chereshnya", userImage: "ava"), date: "17 november", time: "12:00", address: "Minsk"),
       
      ]
    
    let images: [Image] = [
        Image("ava"),
        Image("david-moum-nbqlWhOVu6k-unsplash"),
        Image("ava"),
        Image("ava"),
        Image("david-moum-nbqlWhOVu6k-unsplash"),
        Image("ava"),
        Image("ava"),
        ]
    
}

struct DummyPhoto: Identifiable {
    let id = UUID()
    let photo: Image
}

extension DummyPhoto {
    static let photos: [DummyPhoto] = [
            DummyPhoto(photo: Image("ava")),
            DummyPhoto(photo: Image("david-moum-nbqlWhOVu6k-unsplash")),
            DummyPhoto(photo: Image("ava")),
            DummyPhoto(photo: Image("david-moum-nbqlWhOVu6k-unsplash")),
            DummyPhoto(photo: Image("ava")),
            DummyPhoto(photo: Image("david-moum-nbqlWhOVu6k-unsplash")),
        ]
}
