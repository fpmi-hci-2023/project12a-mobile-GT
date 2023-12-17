//
//  CalendarView.swift
//  GT
//
//  Created by Vlad Muraveiko on 04.11.2023.
//

import SwiftUI

struct CalendarView: View {
    var body: some View {
        ZStack {
            Color(hex: 0x151515).ignoresSafeArea()
            HStack {
                CircleMeet(meetToday: 1)
                CircleMeet(meetToday: 2)
                CircleMeet(meetToday: 3)
            }
        }
//        .overlay {
//            ScrollView {
//                Rectangle()
//                    .frame(width: phoneWidth, height: phoneHeight)
//                    .ignoresSafeArea()
//                    .padding(.top, phoneHeight )
//            }
//        }
    }
}

#Preview {
    CalendarView()
}

struct CircleMeet: View {
    var meetToday: Int
    var body: some View {
        switch meetToday {
        case 1:
            Image("ava")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: phoneWidth / 7, height: phoneWidth / 7)
                .clipShape(Circle())
                .overlay {
                    Circle()
                        .foregroundStyle(.black)
                        .opacity(0.3)
                }
            //                        .overlay(Circle().stroke(Color.green, lineWidth: 2))
            
        case 2:
            HStack {
                Rectangle()
                    .frame(width: phoneWidth / 56, height: phoneWidth / 4)
                    .foregroundStyle(Color(hex: 0x373737))
                
                Rectangle()
                    .frame(width: phoneWidth / 56, height: phoneWidth / 4)
                    .foregroundStyle(Color(hex: 0x373737))
                
                Rectangle()
                    .frame(width: phoneWidth / 56, height: phoneWidth / 4)
                    .foregroundStyle(Color(hex: 0x373737))
                
                Rectangle()
                    .frame(width: phoneWidth / 56, height: phoneWidth / 4)
                    .foregroundStyle(Color(hex: 0x373737))
                
            }
            .rotationEffect(.degrees(45))
            .background(.black)
            .clipShape(Circle())
            .frame(width: phoneWidth / 7, height: phoneWidth / 7)
            
        default:
            Circle()
                .foregroundStyle(.black)
                .frame(width: phoneWidth / 7, height: phoneWidth / 7)
                .overlay(
                    Circle()
                        .strokeBorder(Color(hex: 0x373737), lineWidth: 3)
                )
            
        }
    }
}

