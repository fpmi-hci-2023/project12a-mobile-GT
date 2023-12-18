//
//  SupportView.swift
//  GT
//
//  Created by Vlad Muraveiko on 19.12.2023.
//

import SwiftUI

struct SupportView: View {
    var body: some View {
        VStack {
            ShareButton()

            RateButton()

            LeaveAReview()

            SuggestImprovementsButton()
        }
    }
}

#Preview {
    SupportView()
}


struct ShareButton: View {
    var body: some View {

        let text = "Hey there! Check out this app for relaxation, focus, and better sleep that’ll transform your day: " + APP_LINK

        ShareLink(
            item: text,
            preview: SharePreview(text, image: Image("AppIcon"))
        ) {
            settingsSecondaryText("Share with Friends")
        }
    }
}

struct LeaveAReview: View {
    var body: some View {
        
        Button {
//            UIApplication.shared.open(URL(string: APP_LINK)!)
        } label: {
            settingsSecondaryText("Leave a Review")
        }
   
        
    }
}

struct RateButton: View {
    var body: some View {

        settingsSecondaryText("Rate Us")
        .onTapGesture {
            if let scene = UIApplication.shared.connectedScenes.first(where: { $0.activationState == .foregroundActive }) as? UIWindowScene {
//                SKStoreReviewController.requestReview(in: scene)
            }
        }
    }
}

struct SuggestImprovementsButton: View {
    var body: some View {
        
        settingsSecondaryText("Suggest Improvements")
        .onTapGesture {
//            UIApplication.shared.open(URL(string: APP_LINK)!)
        }
    }
}
