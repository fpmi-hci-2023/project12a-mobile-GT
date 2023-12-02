//
//  MeetFiltersView.swift
//  GT
//
//  Created by Vlad Muraveiko on 12.11.2023.
//

import SwiftUI

struct MeetFiltersView: View {
    var body: some View {
        Text("Filters")
    }
}

#Preview {
    MeetFiltersView()
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
                            .cornerRadius(16)
                            .frame(width: phoneWidth / 9 , height: phoneWidth / 9)
                            .foregroundStyle(.ultraThinMaterial)
                        //                            .opacity(0.9)
                        
                        //                        HStack(spacing: 0) {
                        Image(systemName: "slider.horizontal.3")
                            .foregroundColor(.white)
                            .frame(width: 26)
                        
                        //                            Text("Filters")
                        //                                .font(.custom("Geometria", size: UIScreen.main.bounds.height / 46))
                        //                                .foregroundColor(.white)
                        
                        
                        //                        }
                    }
                }
            }
            
            Spacer()
        }
        .padding(.trailing, phoneWidth / 28)
        .padding(.horizontal)
        .sheet(isPresented: $showingFilters) {
            MeetFiltersView()
            
        }
    }
}
