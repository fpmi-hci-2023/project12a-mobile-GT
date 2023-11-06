//
//  MeetsView.swift
//  GT
//
//  Created by Vlad Muraveiko on 27.10.2023.
//

import SwiftUI

struct MeetsView: View {
    var body: some View {
        ZStack {
            Image("david-moum-nbqlWhOVu6k-unsplash")
                .resizable()
                .ignoresSafeArea()
            MeetsButtons()
            MeetsLabels()
        }
    }
}


#Preview {
    MeetsView()
}


struct MeetsButtons: View {
    var phoneWidth = UIScreen.main.bounds.width
    var phoneHeight = UIScreen.main.bounds.height
    var body: some View {
        VStack {
            HStack {
                Spacer()
                
                Button(action: {
                    // Button action
                }) {
                    ZStack {
                        Rectangle()
                            .cornerRadius(10)
                            .frame(width: phoneWidth / 4 , height: phoneWidth / 12)
                            .foregroundColor(.black)
                            .opacity(0.2)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .strokeBorder(.gray, lineWidth: 2)
                            )
                        
                        HStack(spacing: 0) {
                            Image(systemName: "slider.horizontal.3")
                                .foregroundColor(.white)
                                .frame(width: 26)
                            
                            Text("Filters")
                                .foregroundColor(.white)
       
                        }
                    }
                }
            }
            
            //Переход на профиль организатора
            HStack {
                Spacer()
                Button(action: {
                    // Button action
                }) {
                    Image("david-moum-nbqlWhOVu6k-unsplash")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
                        .overlay(
                            Circle().stroke(Color.white, lineWidth: 2)
                        )
                  
                }
            }
            .padding(.top, UIScreen.main.bounds.height / 2)
            .padding(.trailing, phoneWidth / 42)
            
            //Сохранить в избранное
            HStack {
                Spacer()
                
                Button(action: {
                    // Button action
                }) {
                    Image(systemName: "bookmark")
                        .resizable()
                        .frame(width: 20, height: 24)
                        .foregroundColor(.white)
                }
            }
            .padding(.top, 40)
            .padding(.trailing, phoneWidth / 15)
            
            //Поделиться
            HStack {
                Spacer()
                
                Button(action: {
                    // Button action
                }) {
                    Image(systemName: "square.and.arrow.up")
                        .resizable()
                        .frame(width: 22, height: 28)
                        .foregroundColor(.white)
                }
            }
            .padding(.top, 20)
            .padding(.trailing, phoneWidth / 16)
            
            //Меню троеточие
            HStack {
                Spacer()
                
                Button(action: {
                    // Button action
                }) {
                    Image(systemName: "ellipsis")
                        .resizable()
                        .frame(width: 22, height: 6)
                        .foregroundColor(.white)
                }
            }
            .padding(.top, 26)
            .padding(.trailing, phoneWidth / 16)
            
            Spacer()
        }
        .padding(.horizontal)
    }
}


struct MeetsLabels: View {
    // Meet's name
    var name = "Tennis Club"
    var adress = "Minsk, Belarus"
    var body: some View {
        VStack(spacing: 0) {
            
            HStack {
                Text(name)
                    .bold()
                    .font(.system(size: 30))
                    .foregroundStyle(.white)
                Spacer()
            }
            .padding(.top, UIScreen.main.bounds.height / 1.5)
            HStack {
                Text(adress)
                    .font(.system(size: 16))
                    .foregroundStyle(.white)
                Spacer()
            }
            .padding(.top, 6)
            Spacer()
        }
        .padding(.horizontal)
    }
}
