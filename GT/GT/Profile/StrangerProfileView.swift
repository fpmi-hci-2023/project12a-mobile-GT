//
//  StrangerProfileView.swift
//  GT
//
//  Created by Vlad Muraveiko on 10.11.2023.
//

import SwiftUI
import swiftui_bottom_sheet_drawer

struct StrangerProfileView: View {
    var avatar = "ava"
    var name = "Fox"
    var surname = "Leslie"
    var age = "23"
    var username = "@lesliefox"
    var description = "lalalall alallalalal  la alal al al allalalalal alalalla alal ala lal allalalala"
    var columns = Array(repeating: GridItem(.flexible(), spacing: 20), count: 2)
    
    
    @State var selection: Int = 0
    private let items: [String] = ["Created", "Visited"]
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack(alignment: .top) {
            Color(hex: 0x070707).ignoresSafeArea()
            StrangerProfileImageView(avatar: avatar, name: name, surname: surname, age: age, username: username)
            
            HStack {
                CloseViewArrow()
                Spacer()
                StrangerEllipsisButton()
            }
            
            .padding(.horizontal, 10)
            BottomSheet(content: StrangerProfileContent(username: name, description: description), shift: phoneHeight * 0.44, topIndentation: phoneHeight * 0.06, draggerHeight: phoneHeight * 0.26, dragThresholdToAct: phoneHeight * 0.26)
            
        }
        .navigationBarBackButtonHidden(true)
    }
    
}
        

struct StrangerProfileImageView: View {
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
        

struct StrangerProfileContent: View {
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
        
//        ZStack {
//            
//            Color(hex: 0x121212).ignoresSafeArea()
//            VStack {
//                
//                Image(avatar)
//                    .resizable()
//                    .frame(height: phoneWidth * 1.2)
//                    .overlay {
//                        VStack {
//                            HStack {
//                                CloseViewArrow()
//                                Spacer()
//                                EllipsisButtonStranger()
//                            }
//                            .padding(.top, phoneWidth * 0.15)
//                            .padding(.horizontal, 10)
//                            Spacer()
//                            ZStack {
//                                Rectangle()
//                                    .frame(height: phoneHeight * 0.16)
//                                    .foregroundStyle(
//                                        LinearGradient(
//                                            gradient: Gradient(colors: [Color(hex: 0x121212), .clear]),
//                                            startPoint: .bottom,
//                                            endPoint: .top
//                                        )
//                                    )
//                                VStack(spacing: 0) {
//                                    HStack {
//                                        Text(surname)
//                                            .font(.custom("NeueMachina-Bold", size: UIScreen.main.bounds.height / 20))
//                                            .foregroundStyle(.white)
//                                        
//                                        Spacer()
//                                    }
//                                    .padding(.horizontal, phoneWidth * 0.06)
//                                    
//                                    HStack {
//                                        Text(name)
//                                            .font(.custom("NeueMachina-Bold", size: UIScreen.main.bounds.height / 20))
//                                            .foregroundStyle(.white)
//                                        
//                                        Text(age)
//                                            .font(.custom("geometria_bold", size: UIScreen.main.bounds.height / 30))
//                                            .foregroundStyle(.white)
//                                            .padding(.leading, 10)
//                                            .padding(.top, 3)
//                                        
//                                        Spacer()
//                                    }
//                                    
//                                    .padding(.horizontal, phoneWidth * 0.06)
//                                    
//                                }
//                            }
//                        }
//                    }
//                
//                HStack {
//                    Text("About")
//                        .font(.custom("Poppins-light", size: UIScreen.main.bounds.height / 34))
//                        .foregroundStyle(.white)
//                        .padding(.top, 8)
//                    
//                    Spacer()
//                }
//                .padding(.horizontal, phoneWidth * 0.06)
//                
//                HStack {
//                    Text("AboutAb outAboutA boutA boutAbo utAbo utAbo utAbou tAboutA boutAb outAbout AboutAb outAbou tAbou tAbout Ab outAbou tAbout About AboutAboutA b outAb out")
//                        .font(.custom("Poppins-light", size: UIScreen.main.bounds.height / 54))
//                        .foregroundStyle(.white)
//                    
//                    
//                    Spacer()
//                }
//                .padding(.horizontal, phoneWidth * 0.06)
//                
//                HStack {
//                    Text("Interests")
//                        .font(.custom("Poppins-light", size: UIScreen.main.bounds.height / 34))
//                        .foregroundStyle(.white)
//                        .padding(.top, 2)
//                    
//                    Spacer()
//                }
//                .padding(.horizontal, phoneWidth * 0.06)
//                
//                InterestsView()
//                
//                
//                Spacer()
//            }
//        }
//        .ignoresSafeArea()
//        .navigationBarBackButtonHidden(true)
//        
//        
//    }
//}

#Preview {
    StrangerProfileView()
}


// MARK: Добавить в друзья
struct AddFriendButton: View {
    var body: some View {
        
        Button {
            
            
        } label: {
            ZStack {
                
                Text("Add Friend")
                    .foregroundStyle(Color(hex: 0x151515))
                    .font(.custom("Poppins-Medium", size: UIScreen.main.bounds.height / 44))
                    .background {
                        Capsule()
                            .frame(width: phoneWidth * 0.3 , height: phoneWidth * 0.1)
                            .foregroundStyle(Color(hex: 0xD2BDA8))
                    }
            }
        }
    }
}

struct StrangerEllipsisButton: View {
    var body: some View {
        Menu {
                    Button {
                    } label: {
                        Label("Share", systemImage: "arrow.uturn.forward")
                    }
                    Button(role: .destructive) {
                    } label: {
                        Label("Report", systemImage: "exclamationmark.triangle")
                        
                    }
                    Button(role: .destructive) {
                    } label: {
                        Label("Block", systemImage: "circle.slash")
                        
                    }
        } label: {
            
                Image(systemName: "ellipsis")
                    .foregroundColor(.white)
                    .fontWeight(.light)
                    .font(.system(size: UIScreen.main.bounds.height / 40))
                    .rotationEffect(.degrees(90))
                    .padding(.trailing, phoneWidth * 0.02)
        }
          
                
//        Button {
//            // если свой профиль, то только поделиться, если чужой,
//            //то поделить и пожаловаться
//        } label: {
//            ZStack {
//                Circle()
//                    .frame(width: phoneWidth * 0.1 , height: phoneWidth * 0.1)
//                    .foregroundStyle(.ultraThinMaterial)
//                Image(systemName: "ellipsis")
//                    .resizable()
//                    .frame(width: 22, height: 5)
//                    .foregroundColor(.white)
//                    .rotationEffect(.degrees(90))
//            }
//        }
    }
}







//struct DetailedInformationView: View {
//    @State var time: String
//    @State var date: String
//    @State var imageName: String
//    @State var meetName: String
//    @State var address: String
//    @State var description: String
//    var body: some View {
//        ZStack {
//            
//            Color(hex: 0xFF4F6F1).ignoresSafeArea()
//            
//            VStack {
//                ZStack {
//                    
//                    Image(imageName)
//                        .resizable()
//                        .aspectRatio(contentMode: .fill)
//                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 1.8)
//                        .roundedCorner(34, corners: [.bottomRight, .bottomLeft])
//                }
//                Spacer()
//            }
//            .ignoresSafeArea()
//            
//            LabelRectangle(time: time, date: date, imageName: imageName, meetName: meetName, address: address, description: description)
//            
//            HeaderNavigationMeet(navLabel: meetName)
//            
//        }
//        .navigationBarBackButtonHidden(true)
//    }
//}
//
//#Preview {
//    DetailedInformationView(time: "10:00", date: "June, 27", imageName: "ava", meetName: "Play chess", address: "Yakub Kolas Street", description: "I wanna play chess I wanna play chess I wanna play chess")
// 
//}
//
//
//
//struct LabelRectangle: View {
//    @State var time: String
//    @State var date: String
//    @State var imageName: String
//    @State var meetName: String
//    @State var address: String
//    @State var description: String
//    var body: some View {
//        VStack {
//            ZStack {
//                RoundedRectangle(cornerRadius: 32)
//                    .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.14)
//                    .foregroundStyle(.white)
//                    .shadow(color: Color.black.opacity(0.05), radius: 16, x: 0, y: 5)
//                
//                VStack {
//                    HStack {
//                        
//                        Text(meetName)
//                            .font(.custom("Geometria-Bold", size: phoneHeight / 34))
//                            .foregroundStyle(Color(hex: 0x092114))
//                            .padding(.leading, phoneWidth * 0.14)
//                        Spacer()
//                        
//                        Text("Minsk")
//                            .font(.custom("Geometria-Bold", size: phoneHeight / 50))
//                            .foregroundStyle(Color(hex: 0x092114))
//                            .padding(.trailing, phoneWidth * 0.14)
//                    }
//                    
//                }
//               
//                .padding(.bottom , phoneWidth * 0.06)
//                
//                VStack {
//                    HStack {
//                        
//                        Text(date)
//                            .font(.custom("Geometria-Bold", size: phoneHeight / 50))
//                            .foregroundStyle(Color(hex: 0x092114))
//                            .padding(.leading, phoneWidth * 0.14)
//                        
//                        Spacer()
//                        
//                        Text(time)
//                            .font(.custom("Geometria-Bold", size: phoneHeight / 50))
//                            .foregroundStyle(Color(hex: 0x092114))
//                            .padding(.trailing, phoneWidth * 0.14)
//                    }
//                    
//                }
//                
//                .padding(.top , phoneWidth * 0.1)
//            }
//        }
//        .padding(.top, phoneWidth / 6)
//        
//    }
//}
