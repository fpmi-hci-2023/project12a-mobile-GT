//
//  MeetsView.swift
//  GT
//
//  Created by Vlad Muraveiko on 27.10.2023.
//

import SwiftUI

struct MeetsView: View {
    var body: some View {
        //        @State var selectedIndex = 0
        ZStack {
            VideoView()
            FilterButton()
        }
        
    }


@ViewBuilder
func VideoView()->some View {
//        var meets: Meet
    GeometryReader { proxy in
        let size = proxy.size
        
        TabView {
            ForEach(DummyPhoto.photos, id: \.id) { tiktok in
                tiktok.photo
                    .resizable().clipped()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: size.width)
                    
                    .overlay {
                        MeetsControls()
                            .padding(.bottom, phoneHeight / 8)
                    }
                    .rotationEffect(.init(degrees: -90))
                    .ignoresSafeArea(.all)
                    
                
            }
        }
        .rotationEffect(.init(degrees: 90))
        .frame(width: size.height)
        
        .tabViewStyle(.page(indexDisplayMode: .never))
        .frame(width: size.width)
    }
    .ignoresSafeArea(.all)
}
}
//struct MeetsView: View {
//
//    @Environment(\.presentationMode) var presentationMode
//    var body: some View {
//        NavigationView {
//            
//            ZStack {
//                //                MeetsDataBase()
//                Swiper()
//                FilterButton()
//                //                MeetsLabels(meets: meets)
//                //                MeetsButtons()
//            }
//        
//        }
//    }
//}


#Preview {
    MeetsView()
}


struct MeetsDataBase: View {
    var body: some View {
        ZStack {
            Image("david-moum-nbqlWhOVu6k-unsplash")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Rectangle()
                    .frame(height: phoneHeight * 0.3)
                    .foregroundStyle(
                        LinearGradient(
                            gradient: Gradient(colors: [.black, .clear]),
                            startPoint: .bottom,
                            endPoint: .top
                        )
                    )
            }
            
        }
    }
}

struct MeetsButtons: View {
    
    var body: some View {
        VStack {
            
            //Фильтры
            FilterButton()
            
            //Переход на профиль организатора
            NavigationLink(destination: StrangerProfileView()) {
                OrganisatorProfile()
            }
          
            .padding(.top, UIScreen.main.bounds.height / 2.4)
            .padding(.trailing, phoneWidth / 40)
            
            //Сохранить в избранное
            SaveButton()
            .padding(.top, 40)
            .padding(.trailing, phoneWidth / 15)
            
            //Поделиться
            ShareMeetButton()
            .padding(.top, 20)
            .padding(.trailing, phoneWidth / 16)
            
            //Меню троеточие
            ActionMenuButton()
            .padding(.top, 26)
            .padding(.trailing, phoneWidth / 16)
            
            Spacer()
        }
        .padding(.horizontal)
    }
}


struct MeetsLabels: View {
//    var meets: Meet
    var body: some View {
        VStack(spacing: 0) {
            
            HStack {
//                Text(meets.meetName)
                Text("Name")
                    .font(.custom("NeueMachina-Bold", size: UIScreen.main.bounds.height / 28))
                    .foregroundStyle(.white)
                Spacer()
            }
            .padding(.top, UIScreen.main.bounds.height / 1.5)
            HStack {
//                Text(meets.address)
                Text("Address")
                    .font(.custom("Geometria-Light", size: UIScreen.main.bounds.height / 46))
                    .foregroundStyle(.white)
                Spacer()
            }
            .padding(.top, 6)
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


struct FilterButton: View {
    @State var showingFilters = false
    var body: some View {
        VStack {
            HStack {
                Spacer()
                
                Button(action: {
                    // Button action
                    showingFilters.toggle()
                }) {
                    ZStack {
                        Rectangle()
                            .cornerRadius(10)
                            .frame(width: phoneWidth / 4 , height: phoneWidth / 12)
                            .foregroundColor(.black)
                            .opacity(0.2)
                        
                        HStack(spacing: 0) {
                            Image(systemName: "slider.horizontal.3")
                                .foregroundColor(.white)
                                .frame(width: 26)
                            
                            Text("Filters")
                                .font(.custom("geometria_bold", size: UIScreen.main.bounds.height / 50))
                                .foregroundColor(.white)
                            
                        }
                    }
                }
            }
            Spacer()
        }
        .padding(.horizontal)
        .sheet(isPresented: $showingFilters) {
            MeetFiltersView()
            
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


//struct SwiftUIView: View {
//    @State private var showAlert = false;
//
//    var body: some View {
//        Button(action: { self.showAlert = true }) {
//            Text("Show alert")
//        }.alert(
//            isPresented: $showAlert,
//            content: { Alert(titzle: Text("Hello world")) }
//        )
//    }
//}
