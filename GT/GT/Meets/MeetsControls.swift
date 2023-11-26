//
//  MeetsControls.swift
//  GT
//
//  Created by Vlad Muraveiko on 26.11.2023.
//

import SwiftUI


struct MeetsButton: Identifiable, Hashable {
    let id = UUID()
    let systemImageName: String
//    let subtitle: String?
}

extension MeetsButton {
    static let buttons = [
        MeetsButton(systemImageName: "bookmark.fill"),
        MeetsButton(systemImageName: "arrowshape.turn.up.forward.fill"),
        MeetsButton(systemImageName: "circle.fill")
    ]
}


struct MeetsControls: View {
//    let commentsButtonAction: ()->Void
    
    var body: some View {
        ZStack {
                VStack {
                        Spacer()
                            HStack(alignment: .bottom) {
                                VideoDetails()
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(.trailing, 30)
                                MeetsButtons()
                            }
                    }
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding(.horizontal)
        }
    }
    
    @ViewBuilder
    func VideoDetails()->some View {
        VStack(alignment: .leading, spacing: 7.5) {
            HStack {
                Text("some_user9")
                Text("· 3d ago")
                    .opacity(0.5)
            }
            .fontWeight(.medium)
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                .lineLimit(2)
                .font(.callout)
                .opacity(0.75)
            
            ScrollView(.horizontal) {
                HStack {
                    Image(systemName: "music.note")
                    Text("This is a song name... more text here to see what it - @some_user9")
                        .lineLimit(1)
                        .fixedSize(horizontal: false, vertical: true)
                        .frame(alignment: .trailing)
                }
                .font(.callout)
            }
            .disabled(true)
            .mask {
                LinearGradient(colors: [.white, .black, .white], startPoint: .leading, endPoint: .trailing)
            }
            .frame(height: 25)
            
            
            
        }
        .font(.callout)
    }
    
    @ViewBuilder
    func MeetsButtons()->some View {
        VStack(alignment: .trailing, spacing: 15) {
            
            NavigationLink {
                OrganisatorProfile()
            } label: {
                Image(systemName: "circle.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 40, height: 40)
                    .offset(x: 5)
            }
            .padding(.vertical)

//            Button {
//
//            } label: {
//                Image(systemName: "circle.fill")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(width: 40, height: 40)
//                    .offset(x: 5)
//            }
            
            
            ForEach(MeetsButton.buttons, id: \.id) { button in
                Button {
//                    commentsButtonAction()
                } label: {
                    VStack(spacing: 4) {
                        Image(systemName: button.systemImageName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 25, height: 25)
//                        if let subtitle = button.subtitle {
//                            Text(subtitle)
//                                .font(.caption)
//                                .fontWeight(.semibold)
//                        }
                    }
                }
            }
        }
    }
}
#Preview {
    MeetsControls(/*commentsButtonAction: {}*/)
}
