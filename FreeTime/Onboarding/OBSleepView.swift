//
//  OBSleepView.swift
//  FreeTime
//
//  Created by Matthew Parker on 20/3/22.
//

import SwiftUI

struct OBSleepView: View {
    @EnvironmentObject var userData: UserData
    var body: some View {
        VStack {
            Spacer()
            Text("Please enter how much sleep you get on average per night:")
                .padding()
                .navigationTitle("Sleep")
                .navigationBarTitleDisplayMode(.large)
            TextField("Enter your sleep Hours", value: $userData.sleepHoursDaily, format: .number)
                .padding()
            Spacer()
            Button(action: {}) {
                NavigationLink(destination: OBWorkView()) {
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

struct OBSleepView_Previews: PreviewProvider {
    static var previews: some View {
        OBSleepView()
    }
}
