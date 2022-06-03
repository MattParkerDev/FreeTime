//
//  OBTabView.swift
//  FreeTime
//
//  Created by Matthew Parker on 1/6/22.
//

import SwiftUI

struct OBTabView: View {
    @EnvironmentObject var userData: UserData
    @State var activePage: Int = 0
    var body: some View {
        VStack {
            TabView(selection: $activePage) {
                OBWelcomeView(activePage: $activePage)
                    .environmentObject(userData)
                    .tag(0)
                OBSleepView(activePage: $activePage)
                    .environmentObject(userData)
                    .tag(1)
                OBWorkView(activePage: $activePage)
                    .environmentObject(userData)
                    .tag(2)
                OBChoresView(activePage: $activePage)
                    .environmentObject(userData)
                    .tag(3)
                OBFinalView(activePage: $activePage)
                    .environmentObject(userData)
                    .tag(4)
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .animation(.easeInOut, value: activePage)
            .transition(.slide)
            if activePage == 4 {
                Button(action: {
                    userData.shouldShowOnboarding = false
                    userData.save()
                    userData.pieDataGen()
                }) {
                    Text("Get Started")
                        .frame(width: 300, height: 50)
                        .foregroundColor(Color.white)
                        .background(Color.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                .padding()
            } else {
                Button(action: {
                    activePage += 1
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                        hideKeyboard()
                    }
                }) {
                    Text("Next")
                        .frame(width: 300, height: 50)
                        .foregroundColor(Color.white)
                        .background(Color.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                .padding()
            }
        }
        .background(GradientView())
    }
}

struct OBTabView_Previews: PreviewProvider {
    static var previews: some View {
        OBTabView(activePage: 0)
            .environmentObject(UserData())
    }
}

extension View {
    func hideKeyboard() {
        let resign = #selector(UIResponder.resignFirstResponder)
        UIApplication.shared.sendAction(resign, to: nil, from: nil, for: nil)
    }
}
