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
            ScrollView(showsIndicators: false){
                ZStack {
                    
                    VStack(spacing: 0) {
                        Rectangle()
                            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                            .foregroundStyle(
                                LinearGradient(
                                    gradient: Gradient(colors: [Color(hex: 0x000000), Color(hex: 0x000000), Color(hex: 0x000000), .clear, .clear]),
                                    startPoint: .bottom,
                                    endPoint: .top
                                )
                            )
                            .ignoresSafeArea()
                        Rectangle()
                            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                            .foregroundStyle(.black)
                    }
                    VStack {
                        HStack {
                            Text(meetName)
                                .font(.custom("NeueMachina-Bold", size: UIScreen.main.bounds.height / 20))
                                .foregroundStyle(.white)
                            Spacer()
                        }
                        .padding(.top, phoneHeight / 2)
                        Text(description)
                        Text(date)
                        Text(time)
                        Text(address)
                        Spacer()
                    }
                    .padding(.horizontal)
                    HeaderNavigation(navLabel: "Detailed")
                        .background(
                            Rectangle()
                                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width / 3)
                                .foregroundStyle(
                                    LinearGradient(
                                        gradient: Gradient(colors: [Color(hex: 0x000000), .clear]),
                                        startPoint: .top,
                                        endPoint: .bottom
                                    )
                                )
                        )
                        .padding(.top, UIApplication.shared.connectedScenes
                            .filter { $0.activationState == .foregroundActive }
                            .compactMap { $0 as? UIWindowScene }
                            .first?.windows.first?.safeAreaInsets.top)
                }
            }
            
            .ignoresSafeArea()
            
            
        }
        .background(
            ZStack {
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                    .ignoresSafeArea()
                
                VStack {
                    Spacer()
                    Rectangle()
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 1.5)
                        .foregroundStyle(
                            LinearGradient(
                                gradient: Gradient(colors: [Color(hex: 0x000000), Color(hex: 0x000000), .clear, .clear]),
                                startPoint: .bottom,
                                endPoint: .top
                            )
                        )
                        .ignoresSafeArea()
                }
            })
        .navigationBarBackButtonHidden(true)
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
