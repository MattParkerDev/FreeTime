//
//  MainView.swift
//  FreeTime
//
//  Created by Matthew Parker on 20/3/22.
//

import SwiftUI


// The main view of FreeTime, using nagivation tab view
struct MainView: View {
    @AppStorage("shouldShowOnboarding") var shouldShowOnboarding: Bool = true
    @AppStorage("sleepHours") var sleepHours: String = ""
    var body: some View {
        TabView {
            HomeView(sleepHours: $sleepHours)
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            SettingsView(shouldShowOnboarding: $shouldShowOnboarding)
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
        }
        // Calls onboarding fullscreen cover on first run
        .fullScreenCover(isPresented: $shouldShowOnboarding, content: {
            OBWelcomeView(shouldShowOnboarding: $shouldShowOnboarding, sleepHours: $sleepHours)
            })
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
