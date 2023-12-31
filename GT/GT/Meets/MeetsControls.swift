//
//  MeetsControls.swift
//  GT
//
//  Created by Vlad Muraveiko on 26.11.2023.
//

import SwiftUI

struct MeetsControls: View {
    @State var time: String
    @State var date: String
    @State var imageName: String
    @State var meetName: String
    @State var address: String
    @State var description: String
    var body: some View {
        VStack {
            HStack {
                Spacer()
                NavigationLink(destination: DetailedInformationView(time: time,
                                                                    date: date,
                                                                    imageName: imageName,
                                                                    meetName: meetName,
                                                                    address: address,
                                                                    description: description)) {
                    DetailedViewArrow()
                    
                }
            }
            .padding(.top, UIScreen.main.bounds.height / 2.8)
            
            
            
            //Переход на профиль организатора
            NavigationLink(destination: StrangerProfileView()) {
                OrganisatorProfile()
            }
            .padding(.top, phoneWidth / 10)
            .padding(.trailing, phoneWidth / 40)
            .padding(.horizontal)
            //Сохранить в избранное
            SaveButton()
                .padding(.top, phoneWidth / 10)
                .padding(.trailing, phoneWidth / 15)
                .padding(.horizontal)
            //Поделиться
            ShareMeetButton()
                .padding(.top, phoneWidth / 14)
                .padding(.trailing, phoneWidth / 16)
                .padding(.horizontal)
            //Меню троеточие
            ActionMenuButton()
                .padding(.top, phoneWidth / 16)
                .padding(.trailing, phoneWidth / 16)
                .padding(.horizontal)
            Spacer()
        }
       
    }
}



struct MeetsLabels: View {
    @State var meetName: String
    @State var address: String
    @State var description: String
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Text(meetName)
                    .font(.custom("NeueMachina-Bold", size: UIScreen.main.bounds.height / 28))
                    .foregroundStyle(.white)
                Spacer()
            }
            .padding(.top, UIScreen.main.bounds.height / 1.48)
            HStack {
                
                Image(systemName: "mappin.and.ellipse")
                    .foregroundStyle(.white)
                    .font(Font.system(size: UIScreen.main.bounds.height / 50, weight: .light))
                    .padding(.bottom, 4)
                Text(address)
                    .font(.custom("Geometria", size: UIScreen.main.bounds.height / 46))
                    .foregroundStyle(.white)
                Spacer()
            }
            .padding(.top, 6)
            
            HStack {
                Text(description)
                    .font(.custom("Geometria-Light", size: UIScreen.main.bounds.height / 46))
                    .foregroundStyle(.white)
                    .lineLimit(3)
                 
                Spacer()
            }
            .padding(.trailing, phoneWidth * 0.12)
            .padding(.top, 14)
            Spacer()
        }
        .padding(.horizontal)
    }
}



struct OrganisatorProfile: View {
    var body: some View {
        
        HStack {
            Spacer()
            Image("ava")
                .resizable()
                .frame(width: 50, height: 50)
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .overlay(
                    Circle().stroke(Color.white, lineWidth: 1.6)
                )
        }
    }
}


struct SaveButton: View {
    var body: some View {
        HStack {
            Spacer()
            
            Button(action: {
                // Button action
            }) {
                ZStack {
                    Image(systemName: "bookmark.fill")
                        .resizable()
                        .frame(width: 20, height: 24)
                        .foregroundColor(.white)
                }
            }
        }
    }
}


struct ShareMeetButton: View {
    var body: some View {
        HStack {
            Spacer()
            
            Button(action: {
                // Button action
                print("ShareMeetButton")
            }) {
                Image(systemName: "square.and.arrow.up.fill")
                    .resizable()
                    .frame(width: 22, height: 28)
                    .foregroundColor(.white)
            }
        }
    }
}


struct ActionMenuButton: View {
    @State var showMenu = false
    var body: some View {
        
        HStack {
            Spacer()
            
            Button(action: {
                print("tap")
                showMenu.toggle()
            }) {
                ZStack {
                    Image(systemName: "ellipsis")
                        .resizable()
                        .frame(width: 22, height: 5)
                        .foregroundColor(.white)
                    Rectangle()
                        .foregroundStyle(.clear)
                        .frame(width: 22, height: 22)
                }
            }
            
            .confirmationDialog("", isPresented: $showMenu) {
                Button("Report", role: .destructive) {
                    //Репорт на мероприятие
                    //открывать алерт в котором пользователь пишет причину
                }
                
            }
        }
    }
}


struct DetailedViewArrow: View {
    var body: some View {
        
            ZStack {
//                Image(systemName: "chevron.backward")
//                    .foregroundStyle(.white)
//                    .fontWeight(.light)
//                    .font(.system(size: UIScreen.main.bounds.height / 40))
//                    .frame(width: UIScreen.main.bounds.width * 0.1,height: UIScreen.main.bounds.width * 0.01)
//                    .rotationEffect(.degrees(180))
//                Rectangle()
//                    .foregroundStyle(.clear)
//                    .frame(width: UIScreen.main.bounds.width * 0.1,height: UIScreen.main.bounds.width * 0.1)
                
                
                    
                
                Rectangle()
                    .frame(width: phoneWidth / 10 , height: phoneWidth / 3.4)
                    .roundedCorner(30, corners: [ .topLeft, .bottomLeft])
                    .foregroundStyle(.ultraThinMaterial)
                    .opacity(0.9)
                VStack(spacing: 0) {
                    Text("M")
                        .font(.custom("Geometria", size: UIScreen.main.bounds.height / 36))
                        .foregroundStyle(.white)
                        .padding(.top, 2)
                    Text("O")
                        .font(.custom("Geometria", size: UIScreen.main.bounds.height / 36))
                        .foregroundStyle(.white)
                    Text("R")
                        .font(.custom("Geometria", size: UIScreen.main.bounds.height / 36))
                        .foregroundStyle(.white)
                    Text("E")
                        .font(.custom("Geometria", size: UIScreen.main.bounds.height / 36))
                        .foregroundStyle(.white)
                }
                
            }
//            .shadow(color: Color.black.opacity(0.3), radius: 4, x: 0, y: 10)
          
        
        
    }
}

//#Preview {
//    MeetsControls()
//}


//struct MeetsButton: Identifiable, Hashable {
//    let id = UUID()
//    let systemImageName: String
////    let subtitle: String?
//}
//
//extension MeetsButton {
//    static let buttons = [
//        MeetsButton(systemImageName: "bookmark.fill"),
//        MeetsButton(systemImageName: "arrowshape.turn.up.forward.fill"),
//        MeetsButton(systemImageName: "circle.fill")
//    ]
//}
//
//
//struct MeetsControls: View {
////    let commentsButtonAction: ()->Void
//    
//    var body: some View {
//        ZStack {
//                VStack {
//                        Spacer()
//                            HStack(alignment: .bottom) {
//                                VideoDetails()
//                                    .frame(maxWidth: .infinity, alignment: .leading)
//                                    .padding(.trailing, 30)
//                                MeetsButtons()
//                            }
//                    }
//                    .foregroundColor(.white)
//                    .frame(maxWidth: .infinity, maxHeight: .infinity)
//                .padding(.horizontal)
//        }
//    }
//    
//    @ViewBuilder
//    func VideoDetails()->some View {
//        VStack(alignment: .leading, spacing: 7.5) {
//            HStack {
//                Text("some_user9")
//                Text("· 3d ago")
//                    .opacity(0.5)
//            }
//            .fontWeight(.medium)
//            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
//                .lineLimit(2)
//                .font(.callout)
//                .opacity(0.75)
//            
//            ScrollView(.horizontal) {
//                HStack {
//                    Image(systemName: "music.note")
//                    Text("This is a song name... more text here to see what it - @some_user9")
//                        .lineLimit(1)
//                        .fixedSize(horizontal: false, vertical: true)
//                        .frame(alignment: .trailing)
//                }
//                .font(.callout)
//            }
//            .disabled(true)
//            .mask {
//                LinearGradient(colors: [.white, .black, .white], startPoint: .leading, endPoint: .trailing)
//            }
//            .frame(height: 25)
//            
//            
//            
//        }
//        .font(.callout)
//    }
//    
//    @ViewBuilder
//    func MeetsButtons()->some View {
//        VStack(alignment: .trailing, spacing: 15) {
//            
//            NavigationLink {
//                OrganisatorProfile()
//            } label: {
//                Image(systemName: "circle.fill")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(width: 40, height: 40)
//                    .offset(x: 5)
//            }
//            .padding(.vertical)
//
////            Button {
////
////            } label: {
////                Image(systemName: "circle.fill")
////                    .resizable()
////                    .aspectRatio(contentMode: .fit)
////                    .frame(width: 40, height: 40)
////                    .offset(x: 5)
////            }
//            
//            
//            ForEach(MeetsButton.buttons, id: \.id) { button in
//                Button {
////                    commentsButtonAction()
//                } label: {
//                    VStack(spacing: 4) {
//                        Image(systemName: button.systemImageName)
//                            .resizable()
//                            .aspectRatio(contentMode: .fit)
//                            .frame(width: 25, height: 25)
////                        if let subtitle = button.subtitle {
////                            Text(subtitle)
////                                .font(.caption)
////                                .fontWeight(.semibold)
////                        }
//                    }
//                }
//            }
//        }
//    }
//}

