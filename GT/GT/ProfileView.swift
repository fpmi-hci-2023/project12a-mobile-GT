//
//  ProfileView.swift
//  GT
//
//  Created by Vlad Muraveiko on 27.10.2023.
//

import SwiftUI

struct ProfileView: View {
    var phoneHeight = UIScreen.main.bounds.height
    var phoneWidth = UIScreen.main.bounds.width
    var avatar = "testArt"
    var name = "Oleg Tinkov"
    var body: some View {
        ZStack {
            Color.black
            
            //header
            VStack {
                Image(avatar)
                    .resizable()
                    .frame(height: phoneWidth / 1.8)
                Spacer()
            }
            //avatar
            VStack {
                Image(avatar)
                    .resizable()
                    .frame(width: phoneWidth/2.5, height: phoneWidth/2.5)
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.black, lineWidth: 2)
                    )
                  
                Spacer()
            }
            .padding(.top, phoneWidth/3)
            
            VStack {
                Text(name)
                    .foregroundStyle(.white)
                    .font(.system(size: 26))
                    
                  
                Spacer()
            }
            .padding(.top, phoneWidth/1.3)
            
            SegmentControl()
                .padding(.top, phoneWidth/1.2)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ProfileView()
}



struct SegmentControl: View {
    var phoneHeight = UIScreen.main.bounds.height
    var phoneWidth = UIScreen.main.bounds.width
    @State var index = 0
    var columns = Array(repeating: GridItem(.flexible(), spacing: 20), count: 2)
    var body: some View {
        
        
        VStack {
            HStack {
              Text("Day")
                    .foregroundStyle(self.index == 0 ? .white : .green)
                    .padding(.vertical, 10)
                    .padding(.horizontal, 35)
                    .background(.green.opacity(self.index == 0 ? 1 : 0))
                    .cornerRadius(10)
                    .onTapGesture {
                  
                            self.index = 0
                        
                    }
                
                Spacer()
                
                Text("Week")
                      .foregroundStyle(self.index == 1 ? .white : .green)
                      .padding(.vertical, 10)
                      .padding(.horizontal, 35)
                      .background(.green.opacity(self.index == 1 ? 1 : 0))
                      .cornerRadius(10)
                      .onTapGesture {
              
                              self.index = 1
                      }
                
                Spacer()
                
                Text("Year")
                      .foregroundStyle(self.index == 2 ? .white : .green)
                      .padding(.vertical, 10)
                      .padding(.horizontal, 35)
                      .background(.green.opacity(self.index == 2 ? 1 : 0))
                      .cornerRadius(10)
                      .onTapGesture {
                 
                              self.index = 2
                          
                      }
            }
            .background(.white.opacity(0.06))
            .padding(.top, 25)
            .padding(.horizontal, 10)
            
            if index == 0 {
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 30) {
                        ForEach(visited_data) { cards in
                            CardView(title: cards.title , image: cards.image, date: cards.data)
                        }
                    }
                    .padding(.horizontal, 10)
                }
            } else if index == 1 {
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 30) {
                        ForEach(created_data) { cards in
                            CardView(title: cards.title , image: cards.image, date: cards.data)
                        }
                    }
                    .padding(.horizontal, 10)
                }
            } else {
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 30) {
                        ForEach(saved_data) { cards in
                            CardView(title: cards.title , image: cards.image, date: cards.data)
                        }
                    }
                    .padding(.horizontal, 10)
                }
            }
            
            Spacer()
            
        }
    }
}



struct CardView: View {
    let title: String
    let image: String
    let date: String

    var body: some View {
        ZStack {
            Image(image)
                .resizable()
                .frame(width: UIScreen.main.bounds.width / 2.2, height: UIScreen.main.bounds.width / 1.8)
                .cornerRadius(10)
            
            VStack {
                Spacer()
                
                Text(title)
                    .foregroundColor(.white)
                
                Text(date)
                    .foregroundColor(.white)
            }
            .padding()
        }
    }
}



struct Cards: Identifiable {
    var id : Int
    var title : String
    var image : String
    var data : String
}

var visited_data = [
    
    Cards(id: 1, title: "aaa", image: "testArt", data: "12/12/12"),
    Cards(id: 2, title: "bbb", image: "testArt", data: "12/12/12"),
    Cards(id: 3, title: "ccc", image: "testArt", data: "12/12/12"),
    Cards(id: 4, title: "ddd", image: "testArt", data: "12/12/12"),
  
]

var saved_data = [
    
    Cards(id: 5, title: "eee", image: "david-moum-nbqlWhOVu6k-unsplash", data: "12/12/12"),
    Cards(id: 6, title: "fff", image: "david-moum-nbqlWhOVu6k-unsplash", data: "12/12/12"),
    Cards(id: 7, title: "ggg", image: "david-moum-nbqlWhOVu6k-unsplash", data: "12/12/12"),
  
  
]

var created_data = [
    
    Cards(id: 9, title: "Tennis", image: "david-moum-nbqlWhOVu6k-unsplash", data: "12/12/12"),
    Cards(id: 10, title: "Tennis", image: "david-moum-nbqlWhOVu6k-unsplash", data: "12/12/12"),
    Cards(id: 11, title: "Tennis", image: "david-moum-nbqlWhOVu6k-unsplash", data: "12/12/12"),
    Cards(id: 12, title: "Tennis", image: "david-moum-nbqlWhOVu6k-unsplash", data: "12/12/12"),
  
]
