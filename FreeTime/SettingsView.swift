//
//  SettingsView.swift
//  FreeTime
//
//  Created by Matthew Parker on 20/3/22.
//

import SwiftUI

struct SettingsView: View {
    @Binding var shouldShowOnboarding: Bool
    var body: some View {
        NavigationView {
            VStack {
                List {
                    Button(action: {
                        shouldShowOnboarding.toggle()
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
        SettingsView(shouldShowOnboarding: .constant(true))
    }
}
