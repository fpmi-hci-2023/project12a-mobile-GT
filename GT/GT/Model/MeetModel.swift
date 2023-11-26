//
//  MeetModel.swift
//  GT
//
//  Created by Vlad Muraveiko on 15.11.2023.
//

import Foundation

struct Meet : Identifiable {
    var id = UUID()
    var image: String
    var meetName: String
    var description: String
    var creator: User
    var date: String
    var time: String
    var address: String
}
