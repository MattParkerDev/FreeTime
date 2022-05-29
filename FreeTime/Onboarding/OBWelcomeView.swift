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
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(
                    colors: [Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)), Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))],
                    startPoint: animateGradient ? .topLeading : .bottomLeading,
                    endPoint: animateGradient ? .bottomLeading : .top
                )
                    .ignoresSafeArea()
                    .blur(radius: 100.0, opaque: true)
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now()) {
                            withAnimation(.linear(duration: 6.0).repeatForever(autoreverses: true)) {
                                animateGradient = true
                            }
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
                    animClockView()
                    Spacer()
                    Text("After working, sleeping and doing your chores, just how much time is left to relax and recharge?")
                        .padding(.leading, 20)
                        .padding(.trailing, 20)
                        .padding(.bottom, 20)
                        .multilineTextAlignment(.center)
                    Text("This app allows you to calculate and visualise how much free time you have in a week.")
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
