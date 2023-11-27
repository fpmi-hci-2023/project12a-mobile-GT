//
//  MeetFiltersView.swift
//  GT
//
//  Created by Vlad Muraveiko on 12.11.2023.
//

import SwiftUI

struct MeetFiltersView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
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
                            .cornerRadius(10)
                            .frame(width: phoneWidth / 4 , height: phoneWidth / 12)
                            .foregroundStyle(.ultraThinMaterial)
                        
                        HStack(spacing: 0) {
                            Image(systemName: "slider.horizontal.3")
                                .foregroundColor(.white)
                                .frame(width: 26)
                            
                            Text("Filters")
                                .font(.custom("Geometria", size: UIScreen.main.bounds.height / 46))
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
