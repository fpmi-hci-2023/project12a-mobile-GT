//
//  ProfileView.swift
//  GT
//
//  Created by Vlad Muraveiko on 27.10.2023.
//

import SwiftUI


struct ProfileView: View {
    
    var avatar = "ava"
    var name = "Fox"
    var surname = "Leslie"
    var age = "23"
    var username = "@olegtinkov"
    var columns = Array(repeating: GridItem(.flexible(), spacing: 20), count: 2)
    @State var selection: Int = 0
    private let items: [String] = ["Created", "Visited", "Saved"]
    
    var body: some View {
        NavigationView {
            ZStack {
        
                Color(hex: 0x151515).ignoresSafeArea()
                VStack {
                    
                    Image(avatar)
                        .resizable()
                        .frame(height: phoneWidth * 1.2)
                        .overlay {
                            VStack {
                                HStack {
                                    Spacer()
                                    EllipsisButtonProfile()
                                    NavigationLink(destination: SettingsView()) {
                                        GearButton()
                                    }
                                }
                                .padding(.top, phoneWidth * 0.15)
                                .padding(.horizontal, 10)
                                Spacer()
                                ZStack {
                                    Rectangle()
                                        .frame(height: phoneHeight * 0.16)
                                        .foregroundStyle(
                                            LinearGradient(
                                                gradient: Gradient(colors: [Color(hex: 0x151515), .clear]),
                                                startPoint: .bottom,
                                                endPoint: .top
                                            )
                                        )
                                    VStack(spacing: 0) {
                                        HStack {
                                            Text(surname)
                                                .font(.custom("NeueMachina-Bold", size: UIScreen.main.bounds.height / 20))
                                                .foregroundStyle(.white)
                                            
                                            Spacer()
                                        }
                                        .padding(.horizontal, phoneWidth * 0.06)
                                        
                                        HStack {
                                            Text(name)
                                                .font(.custom("NeueMachina-Bold", size: UIScreen.main.bounds.height / 20))
                                                .foregroundStyle(.white)
                                            
                                            Text(age)
                                                .font(.custom("geometria_bold", size: UIScreen.main.bounds.height / 30))
                                                .foregroundStyle(.white)
                                                .padding(.leading, 10)
                                                .padding(.top, 3)
                                            
                                            Spacer()
                                        }
                                        
                                        .padding(.horizontal, phoneWidth * 0.06)
                                        
                                    }
                                }
                            }
                        }
                    
                    HStack {
                        Text("About")
                            .font(.custom("Geometria-Light", size: UIScreen.main.bounds.height / 34))
                            .foregroundStyle(.white)
                            .padding(.top, 8)
                        
                        Spacer()
                    }
                    .padding(.horizontal, phoneWidth * 0.06)
                    
                    HStack {
                        Text("AboutAb outAboutA boutA boutAbo utAbo utAbo utAbou tAboutA boutAb outAbout AboutAb outAbou tAbou tAbout Ab outAbou tAbout About AboutAboutA b outAb out")
                            .font(.custom("Geometria-Light", size: UIScreen.main.bounds.height / 54))
                            .foregroundStyle(.white)
                        
                        
                        Spacer()
                    }
                    .padding(.horizontal, phoneWidth * 0.06)
                    
                    HStack {
                        Text("Interests")
                            .font(.custom("Geometria-Light", size: UIScreen.main.bounds.height / 34))
                            .foregroundStyle(.white)
                            .padding(.top, 2)
                        
                        Spacer()
                    }
                    .padding(.horizontal, phoneWidth * 0.06)
                    
                    InterestsView()
                    
                    
                    Spacer()
                }
            }.ignoresSafeArea()
         
        }
    }
}
        
     



struct InterestsView: View {
    var body: some View {
        HStack(spacing: 22){
            Text("tennis")
                .font(.custom("Poppins-light", size: UIScreen.main.bounds.height / 54))
                .foregroundStyle(.white)
                .background {
                    Rectangle()
                        .frame(width: phoneWidth * 0.16 , height: phoneWidth * 0.06)
                        .foregroundStyle(Color(hex: 0xD2BDA8))
                        .cornerRadius(20)
                }
            Text("tennis")
                .font(.custom("Poppins-light", size: UIScreen.main.bounds.height / 54))
                .foregroundStyle(.white)
                .background {
                    Rectangle()
                        .frame(width: phoneWidth * 0.16 , height: phoneWidth * 0.06)
                        .foregroundStyle(Color(hex: 0xD2BDA8))
                        .cornerRadius(20)
                }
            Text("tennis")
                .font(.custom("Poppins-light", size: UIScreen.main.bounds.height / 54))
                .foregroundStyle(.white)
                .background {
                    Rectangle()
                        .frame(width: phoneWidth * 0.16 , height: phoneWidth * 0.06)
                        .foregroundStyle(Color(hex: 0xD2BDA8))
                        .cornerRadius(20)
                }
            
            Text("tennis")
                .font(.custom("Poppins-light", size: UIScreen.main.bounds.height / 54))
                .foregroundStyle(.white)
                .background {
                    Rectangle()
                        .frame(width: phoneWidth * 0.16 , height: phoneWidth * 0.06)
                        .foregroundStyle(Color(hex: 0xD2BDA8))
                        .cornerRadius(20)
                }
            
            Spacer()
        }.padding(.horizontal, phoneWidth * 0.08)
    }
}


//        ZStack {
//            Color(hex: 0x151515)
//                .ignoresSafeArea()
//            ScrollView {
//                //avatar
//                VStack {
//                    ZStack {
//                        Image(avatar)
//                            .resizable()
//                            .frame(height: phoneWidth * 1.2)
//                        
//                        VStack {
//                            HStack {
//                                Spacer()
//                                EllipsisButton()
//                                GearButton()
//                            }
//                            .padding(.top, phoneWidth * 0.15)
//                            .padding(.horizontal, 10)
//                            Spacer()
//                        }
//                    }
//                    HStack {
//                        Text(name)
//                            .font(.custom("Poppins-Medium", size: UIScreen.main.bounds.height / 34))
//                            .foregroundStyle(.white)
//                            .font(.system(size: 26))
//                        
//                        Spacer()
//                    }
//                    .padding(.top, 14)
//                    .padding(.horizontal, 10)
//                    HStack {
//                        Text(username)
//                            .font(.custom("Poppins-light", size: UIScreen.main.bounds.height / 44))
//                            .foregroundStyle(.gray)
//                            .font(.system(size: 26))
//                        Spacer()
//                   
//                    }
//                    .padding(.horizontal, 10)
//                    
//                    SegmentControlProfile(items: self.items, selection: self.$selection)
//                        .padding(.horizontal, 6)
//                    
//                    if selection == 0 {
//                        LazyVGrid(columns: columns, spacing: 30) {
//                            ForEach(visited_data) { cards in
//                                CardView(title: cards.title , image: cards.image, date: cards.data, time: cards.time)
//                            }
//                        }
//                        .padding(.horizontal, 10)
//                        
//                    } else if selection == 1 {
//                        LazyVGrid(columns: columns, spacing: 30) {
//                            ForEach(created_data) { cards in
//                                CardView(title: cards.title , image: cards.image, date: cards.data, time: cards.time)
//                            }
//                        }
//                        .padding(.horizontal, 10)
//                        
//                    } else {
//                        LazyVGrid(columns: columns, spacing: 30) {
//                            ForEach(saved_data) { cards in
//                                CardView(title: cards.title , image: cards.image, date: cards.data, time: cards.time)
//                            }
//                        }
//                        .padding(.horizontal, 10)
//                    }
//                    
//                }
//            }
//        }
//        .ignoresSafeArea()
    


#Preview {
    ProfileView()
}



struct EllipsisButtonProfile: View {
    var body: some View {
     
        Button {
            // если свой профиль, то только поделиться, если чужой,
            //то поделить и пожаловаться
        } label: {
            ZStack {
                Circle()
                    .frame(width: phoneWidth * 0.1 , height: phoneWidth * 0.1)
                    .foregroundStyle(.ultraThinMaterial)
                Image(systemName: "arrow.uturn.forward")
                    .foregroundColor(.white)
                    .fontWeight(.light)
                    .font(.system(size: UIScreen.main.bounds.height / 40))
            }
        }
    }
}

struct GearButton: View {
    var body: some View {
        
        ZStack {
            Circle()
                .frame(width: phoneWidth * 0.1 , height: phoneWidth * 0.1)
                .foregroundStyle(.ultraThinMaterial)
            Image(systemName: "gearshape")
                .foregroundColor(.white)
                .fontWeight(.light)
                .font(.system(size: UIScreen.main.bounds.height / 40))
        }
        
    }
}




struct CardView: View {
    let title: String
    let image: String
    let date: String
    let time : String
    var body: some View {
        ZStack {
            Image(image)
                .resizable()
                .frame(width: UIScreen.main.bounds.width / 2.2, height: UIScreen.main.bounds.width / 1.8)
                .cornerRadius(10)
            
            Rectangle()
                .foregroundStyle(.black).opacity(0.3)
                .cornerRadius(10)
            
            VStack {
                HStack {
                    Text(date)
                        .foregroundColor(.white)
                    
                    Text(time)
                        .foregroundColor(.white)
                    
                    Spacer()
                }
                
                Spacer()
                
                HStack {
                    Text(title)
                        .foregroundColor(.white)
                    Spacer()
                }
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
    var time : String
}

var visited_data = [
    
    Cards(id: 1, title: "aaa", image: "testArt", data: "11 ноября", time: "19:00"),
    Cards(id: 2, title: "bbb", image: "testArt", data: "11 ноября", time: "19:00"),
    Cards(id: 3, title: "ccc", image: "testArt", data: "11 ноября", time: "19:00"),
    Cards(id: 4, title: "ddd", image: "testArt", data: "11 ноября", time: "19:00"),
  
]

var saved_data = [
    
    Cards(id: 5, title: "eee", image: "david-moum-nbqlWhOVu6k-unsplash", data: "11 ноября", time: "19:00"),
    Cards(id: 6, title: "fff", image: "david-moum-nbqlWhOVu6k-unsplash", data: "11 ноября", time: "19:00"),
    Cards(id: 7, title: "ggg", image: "david-moum-nbqlWhOVu6k-unsplash", data: "11 ноября", time: "19:00"),
  
  
]

var created_data = [
    
    Cards(id: 9, title: "Tennis", image: "david-moum-nbqlWhOVu6k-unsplash", data: "11 ноября", time: "19:00"),
    Cards(id: 10, title: "Tennis", image: "david-moum-nbqlWhOVu6k-unsplash", data: "11 ноября", time: "19:00"),
    Cards(id: 11, title: "Tennis", image: "david-moum-nbqlWhOVu6k-unsplash", data: "11 ноября", time: "19:00"),
    Cards(id: 12, title: "Tennis", image: "david-moum-nbqlWhOVu6k-unsplash", data: "11 ноября", time: "19:00"),
  
]














//struct SegmentControl: View {
//    var phoneHeight = UIScreen.main.bounds.height
//    var phoneWidth = UIScreen.main.bounds.width
//    @State var index = 0
//    var columns = Array(repeating: GridItem(.flexible(), spacing: 20), count: 2)
//    var body: some View {
//        
//        
//        VStack {
//            HStack {
//              Text("Day")
//                    .foregroundStyle(self.index == 0 ? .white : .green)
//                    .padding(.vertical, 10)
//                    .padding(.horizontal, 35)
//                    .background(.green.opacity(self.index == 0 ? 1 : 0))
//                    .cornerRadius(10)
//                    .onTapGesture {
//                  
//                            self.index = 0
//                        
//                    }
//                
//                Spacer()
//                
//                Text("Week")
//                      .foregroundStyle(self.index == 1 ? .white : .green)
//                      .padding(.vertical, 10)
//                      .padding(.horizontal, 35)
//                      .background(.green.opacity(self.index == 1 ? 1 : 0))
//                      .cornerRadius(10)
//                      .onTapGesture {
//              
//                              self.index = 1
//                      }
//                
//                Spacer()
//                
//                Text("Year")
//                      .foregroundStyle(self.index == 2 ? .white : .green)
//                      .padding(.vertical, 10)
//                      .padding(.horizontal, 35)
//                      .background(.green.opacity(self.index == 2 ? 1 : 0))
//                      .cornerRadius(10)
//                      .onTapGesture {
//                 
//                              self.index = 2
//                          
//                      }
//            }
//            .background(.white.opacity(0.06))
//            .padding(.top, 25)
//            .padding(.horizontal, 10)
//            
//            if index == 0 {
//                ScrollView {
//                    LazyVGrid(columns: columns, spacing: 30) {
//                        ForEach(visited_data) { cards in
//                            CardView(title: cards.title , image: cards.image, date: cards.data)
//                        }
//                    }
//                    .padding(.horizontal, 10)
//                }
//            } else if index == 1 {
//                ScrollView {
//                    LazyVGrid(columns: columns, spacing: 30) {
//                        ForEach(created_data) { cards in
//                            CardView(title: cards.title , image: cards.image, date: cards.data)
//                        }
//                    }
//                    .padding(.horizontal, 10)
//                }
//            } else {
//                ScrollView {
//                    LazyVGrid(columns: columns, spacing: 30) {
//                        ForEach(saved_data) { cards in
//                            CardView(title: cards.title , image: cards.image, date: cards.data)
//                        }
//                    }
//                    .padding(.horizontal, 10)
//                }
//            }
//            
//            Spacer()
//            
//        }
//    }
//}
