//
//  OBFinalView.swift
//  FreeTime
//
//  Created by Matthew Parker on 20/3/22.
//

import SwiftUI

struct OBFinalView: View {
    @Binding var shouldShowOnboarding: Bool
    var body: some View {
        VStack {
            Spacer()
            Text("Welcome to Free Time!")
            Spacer()
            Button(action: {
                shouldShowOnboarding.toggle()
            }) {
                Text("Get Started")
                    .frame(width: 300, height: 50)
                    .foregroundColor(Color.white)
                    .background(Color.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            .padding()
        }
    }
}
struct OBFinalView_Previews: PreviewProvider {
    static var previews: some View {
        OBFinalView(shouldShowOnboarding: .constant(true))
    }
}
