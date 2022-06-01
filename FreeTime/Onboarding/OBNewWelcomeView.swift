//
//  OBNewWelcomeView.swift
//  FreeTime
//
//  Created by Matthew Parker on 1/6/22.
//

import SwiftUI

struct OBNewWelcomeView: View {
    @EnvironmentObject var userData: UserData
    var body: some View {
        TabView(selection: $userData.obTabSelection) {
            OBWelcomeView()
                .environmentObject(userData)
                .tag(1)
            OBSleepView()
                .environmentObject(userData)
                .tag(2)
                .transition(.slide)
            OBWorkView()
                .environmentObject(userData)
                .tag(3)
            OBChoresView()
                .environmentObject(userData)
                .tag(4)
            OBFinalView()
                .environmentObject(userData)
                .tag(5)
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
    }
}

struct OBNewWelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        OBNewWelcomeView()
            .environmentObject(UserData())
    }
}
