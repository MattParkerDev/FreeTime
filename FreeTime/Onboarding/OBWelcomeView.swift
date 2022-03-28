//
//  OBWelcomeView.swift
//  FreeTime
//
//  Created by Matthew Parker on 20/3/22.
//

import SwiftUI

struct OBWelcomeView: View {
    @State var shouldShowOnboarding: Bool = true
    var body: some View {
        NavigationView {
            VStack {
                Text("Welcome to Free Time!")
                    .bold()
                    .font(.system(size:28))
                Spacer()
                    .navigationBarTitleDisplayMode(.inline)
                Image(systemName: "clock")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 190, height: 190)
                Spacer()
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris eget leo blandit, mattis est id, pretium diam.")
                    .padding(.leading, 20)
                    .padding(.trailing, 20)
                    .multilineTextAlignment(.center)
                Spacer()
                Button(action: {}) {
                    NavigationLink(destination: OBSleepView()) {
                        Text("Next")
                            .frame(width: 300, height: 50)
                            .foregroundColor(Color.white)
                            .background(Color.blue)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                }
                .padding()
            }
        }
    }
}

struct OBWelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            OBWelcomeView()
                .previewDevice(PreviewDevice(rawValue: "iPhone 11 Pro"))
            OBWelcomeView()
                .previewDevice(PreviewDevice(rawValue: "iPod touch (7th generation)"))
        }
    }
}
