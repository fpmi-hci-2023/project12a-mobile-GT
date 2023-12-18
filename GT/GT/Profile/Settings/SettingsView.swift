//
//  SettingsView.swift
//  GT
//
//  Created by Vlad Muraveiko on 13.11.2023.
//

import SwiftUI

let APP_LINK = "https://apps.apple.com/app/id6458223139"

struct SettingsView: View {
    @Environment(\.presentationMode) var presentationMode
    var paddingBetweenThemeAndSetting: CGFloat = 10
    var barPlayer = UIScreen.main.bounds.height / 6.18
    var body: some View {
        
        ZStack(alignment: .top){
            Color(hex: 0x070707).ignoresSafeArea()
            
            //List of settings
            ScrollView(showsIndicators: false) {
                
                //First 10
                VStack(spacing: 14) {
                    
                    settingsText("MAIN")
                    
                    NavigationLink(destination: ProfileSettingsView()) {
                        ProfileSettings()
                    }
                    
                    NavigationLink(destination: PrivacyView()) {
                        Privacy()
                    }
                    
                    NavigationLink(destination: NotificationsView()) {
                        Notifications()
                    }
                    
                    NavigationLink(destination: BlackListView()) {
                        BlackList()
                    }
                    
//                    settingsText("SUPPORT")
                    
                    NavigationLink(destination: SupportView()) {
                        Support()
                    }

                }
                //Second 10
                VStack(spacing: 14) {
                    settingsText("LEGAL")
                    
                    TermsAndConditions()
                    
                    PrivacyPolicy()
                }
            }
            .padding(.top, phoneHeight * 0.06)
            
            
            HeaderNavigation(navLabel: "Settings")
        }
        
        
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    SettingsView()
}



struct ColorThemes: View {
    var body: some View {
        settingsSecondaryText("Color themes")
    }
}

struct Language: View {
    var body: some View {
        
        Button {
            guard let bundleId = Bundle.main.bundleIdentifier else { return }
            guard let settingsUrl = URL(string: UIApplication.openSettingsURLString + bundleId) else { return }
            UIApplication.shared.open(settingsUrl)
        } label: {
            settingsSecondaryText("Language")
        }
        
    }
}

struct ProfileSettings: View {
    var body: some View {
        settingsSecondaryText("ProfileSettings")

    }
}

struct Privacy: View {
    var body: some View {
        settingsSecondaryText("Privacy")
    }
}

struct BlackList: View {
    var body: some View {
        settingsSecondaryText("BlackList")
    }
}

struct Notifications: View {
    var body: some View {
        settingsSecondaryText("Notifications")
    }
}


struct Support: View {
    var body: some View {
        settingsSecondaryText("Support")
    }
}

//struct Restore: View {
//    var body: some View {
//        settingsSecondaryText("Restore")
//    }
//}
//
//struct ManageSubscriptionView: View {
//    var body: some View {
//        settingsSecondaryText("Manage Subscription")
//    }
//}



//Terms and Policy
struct TermsAndConditions: View {
    @Environment(\.openURL) var openURL

    var body: some View {
        
        Button {
            openURL(URL(string: "https://www.apple.com/legal/internet-services/itunes/dev/stdeula/")!)
        } label: {
            settingsSecondaryText("Terms and Conditions")
        }
        
    }
}

struct PrivacyPolicy: View {
    @Environment(\.openURL) var openURL

    var body: some View {
        
        Button {
            openURL(URL(string: "https://danichmur.github.io/affime.github.io/sounsapp_privacy")!)
        } label: {
            settingsSecondaryText("Privacy Policy")
        }
        
    }
}





