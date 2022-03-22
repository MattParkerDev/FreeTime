//
//  OnboardingView.swift
//  FreeTime
//
//  Created by Matthew Parker on 20/3/22.
//

import SwiftUI

struct OBWelcomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Hello, World!")
                   
                Text("Yong")
                    .padding(.bottom, 10)
                    .padding(.top, 10)
                NavigationLink(destination: OBSleepView()) {
                    Text("Test")
                }
                    
                .navigationTitle("Welcome!")
            }
            
            Text("test")
        }
    }
}

struct OBWelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        OBWelcomeView()
    }
}
