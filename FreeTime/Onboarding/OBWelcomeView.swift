//
//  OBWelcomeView.swift
//  FreeTime
//
//  Created by Matthew Parker on 20/3/22.
//

import SwiftUI

struct OBWelcomeView: View {
    @EnvironmentObject var userData: UserData
    @Binding var activePage: Int
    var body: some View {
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
        }
    }
}

struct OBWelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        OBWelcomeView(activePage: .constant(0))
            .preferredColorScheme(.dark)
    }
}
