//
//  OBWelcomeView.swift
//  FreeTime
//
//  Created by Matthew Parker on 20/3/22.
//

import SwiftUI

struct OBWelcomeView: View {
    @EnvironmentObject var userData: UserData
    @State private var animateGradient = false
//    @State private var GradientPairs = [0: "topLeading",
//                                        1: ".bottomLeading",
//                                        2: ".bottomTrailing",
//                                        4: ".topTrailing"]
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(
                    colors: [Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)), Color(#colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1))],
                    
                    startPoint: animateGradient ? .topLeading : .bottomLeading,
                    endPoint: animateGradient ? .bottomTrailing : .topTrailing
                )
                    .ignoresSafeArea()
                    .onAppear {
                        withAnimation(.linear(duration: 2.0).repeatForever(autoreverses: false)) {
                            animateGradient = true
                        }
                    }
                VStack {
                    Spacer()
                    Text("Welcome to Free Time!")
                        .bold()
                        .font(.system(size:28))
                    Spacer()
                        .navigationBarTitleDisplayMode(.inline)
                        .navigationBarHidden(true)
//                    Image(systemName: "clock")
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 190, height: 190)
                    animClockView()
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
}

struct OBWelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        
        Group {
            OBWelcomeView()
        }
    }
}
