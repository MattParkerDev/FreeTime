//
//  OBWelcomeView.swift
//  FreeTime
//
//  Created by Matthew Parker on 20/3/22.
//

import SwiftUI

struct OBWelcomeView: View {
    @EnvironmentObject var userData: UserData
    var body: some View {
        ZStack {
            GradientView()
            VStack {
                Spacer()
                Text("Welcome to Free Time!")
                    .bold()
                    .font(.system(size:28))
                    .foregroundColor(Color.white)
                Spacer()
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationBarHidden(true)
                animClockView()
                Spacer()
                Text("After working, sleeping and doing your chores, just how much time is left to relax and recharge? \n\nThis app allows you to calculate and visualise how much free time you have in a week.")
                    .padding(.leading, 15)
                    .padding(.trailing, 15)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.white)
                Spacer()
                Button(action: {
                    withAnimation(.easeOut(duration: 2.0)) {
                        userData.obTabSelection = 2
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
    }
}

struct OBWelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        
        Group {
            OBWelcomeView()
        }
    }
}
