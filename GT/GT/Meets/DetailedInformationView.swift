//
//  DetailedInformationView.swift
//  GT
//
//  Created by Vlad Muraveiko on 04.11.2023.
//

import SwiftUI

struct DetailedInformationView: View {
    @State var time: String
    @State var date: String
    @State var imageName: String
    @State var meetName: String
    @State var address: String
    @State var description: String
    var body: some View {
        ZStack {
            Color(hex: 0x151515).ignoresSafeArea()
            HeaderNavigation(navLabel: "Detailed")
            
            VStack {
                Text(imageName)
                Text(meetName)
                Text(description)
                Text(date)
                Text(time)
                Text(address)
                
            }
        }.navigationBarBackButtonHidden(true)
    }
}

//#Preview {
//    DetailedInformationView()
//}


//struct  MeetData: Identifiable {
//    let id: Int
//    var imageName: String
//    var meetName: String
//    var description: String
////    var creator: User
//    var date: String
//    var time: String
//    var address: String
//}
