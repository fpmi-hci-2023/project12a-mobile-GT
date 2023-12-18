//
//  DetailedInformationView.swift
//  GT
//
//  Created by Vlad Muraveiko on 04.11.2023.
//

import SwiftUI
import swiftui_bottom_sheet_drawer

struct DetailedInformationView: View {
    @State var time: String
    @State var date: String
    @State var imageName: String
    @State var meetName: String
    @State var address: String
    @State var description: String
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ZStack(alignment: .top) {
            Color(hex: 0x070707).ignoresSafeArea()
            
            MeetImageView(imageName: imageName)
            
            HeaderNavigationMeet(navLabel: meetName)
            
            BottomSheet(content: MeetSheetContent(time: time, date: date, imageName: imageName, meetName: meetName, address: address, description: description), shift: phoneHeight * 0.44, topIndentation: phoneHeight * 0.06, draggerHeight: phoneHeight * 0.26, dragThresholdToAct: phoneHeight * 0.26)
            
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    DetailedInformationView(time: "10:00", date: "June, 27", imageName: "ava", meetName: "Play chess", address: "Yakub Kolas Street", description: "I wanna play chess I wanna play chess I wanna play chess")
 
}

struct MeetImageView: View {
    @State var imageName: String
    var body: some View {
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 1.8)
            .roundedCorner(34, corners: [.bottomRight, .bottomLeft])
            .ignoresSafeArea()
    }
}
struct MeetSheetContent: View {
    @State var time: String
    @State var date: String
    @State var imageName: String
    @State var meetName: String
    @State var address: String
    @State var description: String
    var body: some View {
        ZStack {
            Color(hex: 0x070707).ignoresSafeArea()
            ScrollView {
                VStack {
                    ZStack {
                        
                        RoundedRectangle(cornerRadius: 32)
                            .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.14)
                            .foregroundStyle(.white)
                            .shadow(color: Color.black.opacity(0.05), radius: 16, x: 0, y: 5)
                        
                        VStack {
                            HStack {
                                
                                Text(meetName)
                                    .font(.custom("Geometria-Bold", size: phoneHeight / 34))
                                    .foregroundStyle(Color(hex: 0x092114))
                                    .padding(.leading, phoneWidth * 0.14)
                                Spacer()
                                
                                Text("Minsk")
                                    .font(.custom("Geometria-Bold", size: phoneHeight / 50))
                                    .foregroundStyle(Color(hex: 0x092114))
                                    .padding(.trailing, phoneWidth * 0.14)
                            }
                            
                        }
                        
                        .padding(.bottom , phoneWidth * 0.06)
                        
                        VStack {
                            HStack {
                                
                                Text(date)
                                    .font(.custom("Geometria-Bold", size: phoneHeight / 50))
                                    .foregroundStyle(Color(hex: 0x092114))
                                    .padding(.leading, phoneWidth * 0.14)
                                
                                Spacer()
                                
                                Text(time)
                                    .font(.custom("Geometria-Bold", size: phoneHeight / 50))
                                    .foregroundStyle(Color(hex: 0x092114))
                                    .padding(.trailing, phoneWidth * 0.14)
                            }
                            
                        }
                        
                        .padding(.top , phoneWidth * 0.1)
                    }
                }
            }
            .padding(.top, phoneWidth * 0.06)
        }
        
    }
}
        
//
//            VStack {
//                HStack {
//                    Button(action: {
//                        showModal = false
//                        presentationMode.wrappedValue.dismiss()
//                    }) {
//                        ZStack {
//                            Image(systemName: "chevron.backward")
//                                .foregroundStyle(.white)
//                                .fontWeight(.light)
//                                .font(.system(size: UIScreen.main.bounds.height / 40))
//                                .frame(width: UIScreen.main.bounds.width * 0.1,height: UIScreen.main.bounds.width * 0.01)
//                            Rectangle()
//                                .foregroundStyle(.clear)
//                                .frame(width: UIScreen.main.bounds.width * 0.1,height: UIScreen.main.bounds.width * 0.1)
//                        }
//                    }
//                    Spacer()
//                    Text(meetName)
//                        .font(.custom("Geometria-Light", size: UIScreen.main.bounds.height / 30))
//                        .foregroundStyle(.white)
//                    Spacer()
//
//                    Menu {
//                        Button {
//                        } label: {
//                            Label("Share", systemImage: "arrow.uturn.forward")
//                        }
//                        Button(role: .destructive) {
//                        } label: {
//                            Label("Report", systemImage: "exclamationmark.triangle")
//
//                        }
//                    } label: {
//                        ZStack {
//                            Rectangle()
//                                .foregroundStyle(.clear)
//                                .frame(width: UIScreen.main.bounds.width * 0.1,height: UIScreen.main.bounds.width * 0.1)
//
//                            Image(systemName: "ellipsis")
//                                .foregroundColor(.white)
//                                .fontWeight(.light)
//                                .font(.system(size: UIScreen.main.bounds.height / 40))
//                                .rotationEffect(.degrees(90))
//                                .padding(.trailing, phoneWidth * 0.02)
//                        }
//                    }
//                }
//                .padding(.horizontal, 10)
//                Spacer()
//            }
        
//        .sheet(isPresented: $showModal) {
//            ZStack {
//                Color(hex: 0x0D0D0D).ignoresSafeArea()
//                
//                Text("Item ")
//                    .foregroundStyle(.white)
//                
//                   
//            }
//            .presentationDetents([.height(phoneHeight * 0.4), .large])
//            .presentationBackgroundInteraction(.enabled)
//            .interactiveDismissDisabled()
//            .presentationContentInteraction(.scrolls)
//            .opacity(opa == true ? 1 : 0)
//        }
//        .onAppear {
//            var transaction = Transaction()
//            transaction.disablesAnimations = true
//            withTransaction(transaction) {
//                showModal = true
//            }
//        }
//        .onDisappear {
//            var transaction = Transaction()
//            transaction.disablesAnimations = true
//            withTransaction(transaction) {
//                opa = false
//                showModal = false
//               
//            }
//        }
       


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
//                    Button("Show Credits") {
//                               showingCredits.toggle()
//                           }
//                    .sheet(isPresented: $showingCredits) {
//                               Text("This app was brought to you by Hacking with Swift")
//                                   .presentationDetents([.medium, .large])
//                                   .presentationDragIndicator(.hidden)
//                           }
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
//      
//    }
//}


