//
//  SettingsView.swift
//  FreeTime
//
//  Created by Matthew Parker on 20/3/22.
//

import SwiftUI

struct SettingsView: View {
    @EnvironmentObject var userData: UserData
    var body: some View {
        NavigationView {
            VStack {
                List {
                    Button(action: {
                        userData.shouldShowOnboarding = true;
                        userData.save()
                    }, label: {Text("Show Onboarding")})
                    Text("Hello World")
                    Text("Hello World")
                }
            }
            .navigationTitle("Settings")
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
