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
        Button(action: {
            presentationMode.wrappedValue.dismiss()
        }) {
            ZStack {
                Image(systemName: "chevron.backward")
                    .foregroundStyle(.white)
                    .fontWeight(.light)
                    .font(.system(size: UIScreen.main.bounds.height / 40))
                    .frame(width: UIScreen.main.bounds.width * 0.1,height: UIScreen.main.bounds.width * 0.01)
                Rectangle()
                    .foregroundStyle(.clear)
                    .frame(width: UIScreen.main.bounds.width * 0.1,height: UIScreen.main.bounds.width * 0.1)
            }
        }
    }
}



struct HeaderNavigation: View {
    var navLabel: String
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack {
           
            VStack {
                HStack {
                    CloseViewArrow()
                    Spacer()
                    Text(navLabel)
                        .font(.custom("Geometria-Light", size: UIScreen.main.bounds.height / 30))
                        .foregroundStyle(.white)
                    Spacer()
                    Rectangle()
                        .frame(width: UIScreen.main.bounds.width * 0.1,height: UIScreen.main.bounds.width * 0.1)
                        .foregroundStyle(.clear)
                }
                .padding(.horizontal, 10)
                Spacer()
            }
            
        }
    }
}


struct HeaderNavigationMeet: View {
    var navLabel: String
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack {
           
            VStack {
                HStack {
                    CloseViewArrow()
                    Spacer()
                    Text(navLabel)
                        .font(.custom("Geometria-Light", size: UIScreen.main.bounds.height / 30))
                        .foregroundStyle(.white)
                    Spacer()
                    
                    Menu {
                        Button {
                        } label: {
                            Label("Share", systemImage: "arrow.uturn.forward")
                        }
                        Button(role: .destructive) {
                        } label: {
                            Label("Report", systemImage: "exclamationmark.triangle")
                            
                        }
                    } label: {
                        ZStack {
                            Rectangle()
                                .foregroundStyle(.clear)
                                .frame(width: UIScreen.main.bounds.width * 0.1,height: UIScreen.main.bounds.width * 0.1)
                            
                            Image(systemName: "ellipsis")
                                .foregroundColor(.white)
                                .fontWeight(.light)
                                .font(.system(size: UIScreen.main.bounds.height / 40))
                                .rotationEffect(.degrees(90))
                                .padding(.trailing, phoneWidth * 0.02)
                        }
                    }
                }
                .padding(.horizontal, 10)
                Spacer()
            }
            
        }
    }
}

//corner rounding separately
struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

extension View {
    func roundedCorner(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners) )
    }
}
