//
//  UIUtils.swift
//  GT
//
//  Created by Vlad Muraveiko on 13.11.2023.
//


import SwiftUI

struct CloseViewArrow: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
//        VStack {
//            HStack(spacing: 100){
                
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Image("arrowBack")
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width * 0.1,height: UIScreen.main.bounds.width * 0.1)
                }
//            }

//        }
        
//        .padding(.top, 20)
    }
}
