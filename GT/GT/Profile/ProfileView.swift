//
//  ProfileView.swift
//  GT
//
//  Created by Vlad Muraveiko on 27.10.2023.
//

import SwiftUI
import swiftui_bottom_sheet_drawer


struct ProfileView: View {
    
    var avatar = "ava"
    var name = "Fox"
    var surname = "Leslie"
    var age = "23"
    var username = "@lesliefox"
    var description = "lalalall alallalalal  la alal al al allalalalal alalalla alal ala lal allalalala"
    var columns = Array(repeating: GridItem(.flexible(), spacing: 20), count: 2)
    @State var selection: Int = 0
    private let items: [String] = ["Created", "Visited", "Saved"]
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .top) {
                Color(hex: 0x070707).ignoresSafeArea()
                SelfProfileImageView(avatar: avatar, name: name, surname: surname, age: age, username: username)
                
                HStack(spacing: 0) {
                    EllipsisButtonProfile()
                        .padding(.top, 3)
                    Spacer()
                    NavigationLink(destination: SettingsView()) {
                        GearButton()
                    }
                }
                .padding(.horizontal)
                
                BottomSheet(content: SelfProfileContent(username: name, description: description), shift: phoneHeight * 0.44, topIndentation: phoneHeight * 0.06, draggerHeight: phoneHeight * 0.26, dragThresholdToAct: phoneHeight * 0.26)
                
            }
            .navigationBarBackButtonHidden(true)
        }
    }
    
}
    
struct SelfProfileImageView: View {
    @State var avatar: String
    @State var name: String
    @State var surname: String
    @State var age: String
    @State var username: String
    
    var body: some View {
        ZStack {
            Image(avatar)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 1.8)
                .roundedCorner(34, corners: [.bottomRight, .bottomLeft])
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                Spacer()
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
                        .font(.custom("geometria_bold", size: UIScreen.main.bounds.height / 34))
                        .foregroundStyle(.white)
                        .padding(.leading, 10)
                        .padding(.top, 3)
                    
                    Spacer()
                    
                    Text(username)
                        .font(.custom("geometria_bold", size: UIScreen.main.bounds.height / 40))
                        .foregroundStyle(.white)
                        .padding(.leading, 10)
                        .padding(.top, 3)
                    
                }
                .padding(.bottom, phoneWidth * 0.14)
                .padding(.horizontal, phoneWidth * 0.06)
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 1.8)
        }
    }
}



struct SelfProfileContent: View {
    @State var username: String
    @State var description: String
    var body: some View {
        ZStack {
            Color(hex: 0x070707).ignoresSafeArea()
            VStack(spacing: 0) {
            
                HStack {
                    Text("About")
                        .font(.custom("Geometria-Medium", size: UIScreen.main.bounds.height / 36))
                        .foregroundStyle(.white)
                    
                    Spacer()
                }
                .padding(.horizontal, phoneWidth * 0.06)
                
                HStack {
                    Text(description)
                        .font(.custom("Geometria-Light", size: UIScreen.main.bounds.height / 44))
                        .foregroundStyle(.white)
                    
                    Spacer()
                }
                .padding(.top, phoneWidth * 0.04)
                .padding(.horizontal, phoneWidth * 0.06)
                Spacer()
            }
            .padding(.top, phoneWidth * 0.06)
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



//    var body: some View {
//        NavigationView {
//            ZStack {
//
//                Color(hex: 0x121212).ignoresSafeArea()
//                VStack {
//
//                    Image(avatar)
//                        .resizable()
//                        .frame(height: phoneWidth * 1.2)
//                        .overlay {
//                            VStack {
//                                HStack {
//                                    Spacer()
//                                    EllipsisButtonProfile()
//                                    NavigationLink(destination: SettingsView()) {
//                                        GearButton()
//                                    }
//                                }
//                                .padding(.top, phoneWidth * 0.15)
//                                .padding(.horizontal, 10)
//                                Spacer()
//                                ZStack {
//                                    Rectangle()
//                                        .frame(height: phoneHeight * 0.16)
//                                        .foregroundStyle(
//                                            LinearGradient(
//                                                gradient: Gradient(colors: [Color(hex: 0x121212), .clear]),
//                                                startPoint: .bottom,
//                                                endPoint: .top
//                                            )
//                                        )
//                                    VStack(spacing: 0) {
//                                        HStack {
//                                            Text(surname)
//                                                .font(.custom("NeueMachina-Bold", size: UIScreen.main.bounds.height / 20))
//                                                .foregroundStyle(.white)
//
//                                            Spacer()
//                                        }
//                                        .padding(.horizontal, phoneWidth * 0.06)
//
//                                        HStack {
//                                            Text(name)
//                                                .font(.custom("NeueMachina-Bold", size: UIScreen.main.bounds.height / 20))
//                                                .foregroundStyle(.white)
//
//                                            Text(age)
//                                                .font(.custom("geometria_bold", size: UIScreen.main.bounds.height / 30))
//                                                .foregroundStyle(.white)
//                                                .padding(.leading, 10)
//                                                .padding(.top, 3)
//
//                                            Spacer()
//                                        }
//
//                                        .padding(.horizontal, phoneWidth * 0.06)
//
//                                    }
//                                }
//                            }
//                        }
//
//                    HStack {
//                        Text("About")
//                            .font(.custom("Geometria-Light", size: UIScreen.main.bounds.height / 34))
//                            .foregroundStyle(.white)
//                            .padding(.top, 8)
//
//                        Spacer()
//                    }
//                    .padding(.horizontal, phoneWidth * 0.06)
//
//                    HStack {
//                        Text("AboutAb outAboutA boutA boutAbo utAbo utAbo utAbou tAboutA boutAb outAbout AboutAb outAbou tAbou tAbout Ab outAbou tAbout About AboutAboutA b outAb out")
//                            .font(.custom("Geometria-Light", size: UIScreen.main.bounds.height / 54))
//                            .foregroundStyle(.white)
//
//
//                        Spacer()
//                    }
//                    .padding(.horizontal, phoneWidth * 0.06)
//
//                    HStack {
//                        Text("Interests")
//                            .font(.custom("Geometria-Light", size: UIScreen.main.bounds.height / 34))
//                            .foregroundStyle(.white)
//                            .padding(.top, 2)
//
//                        Spacer()
//                    }
//                    .padding(.horizontal, phoneWidth * 0.06)
//
//
//
//
//                    Spacer()
//                }
//            }.ignoresSafeArea()
//
//        }
//    }







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
            // если свой профиль, то только поделиться
  
        } label: {
            ZStack {
                Rectangle()
                    .cornerRadius(16)
                    .frame(width: phoneWidth / 9 , height: phoneWidth / 9)
                    .foregroundStyle(.clear)
                Image(systemName: "square.and.arrow.up")
                    .foregroundColor(.white)
                    .fontWeight(.light)
                    .font(.system(size: UIScreen.main.bounds.height / 42))
                
            }
            .padding(.bottom, 2)
        }
    }
}

struct GearButton: View {
    var body: some View {
        
        ZStack {
            Rectangle()
                .cornerRadius(16)
                .frame(width: phoneWidth / 9 , height: phoneWidth / 9)
                .foregroundStyle(.clear)
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
