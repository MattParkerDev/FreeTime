//
//  OBChoresView.swift
//  FreeTime
//
//  Created by Matthew Parker on 25/3/22.
//

import SwiftUI

struct OBChoresView: View {
    @EnvironmentObject var userData: UserData
    var body: some View {
        VStack {
            Spacer()
            Text("Please enter how many hours per week you spend on chores such as grocery shopping or doing washing:")
                .navigationTitle("Chores")
                .navigationBarTitleDisplayMode(.large)
            TextField("Enter your chore hours", value: $userData.choreHoursWeekly, format: .number)
                .padding()
            Spacer()
            Button(action: {}) {
                NavigationLink(destination: OBFinalView()) {
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

struct OBChoresView_Previews: PreviewProvider {
    static var previews: some View {
        OBChoresView()
            .environmentObject(UserData())
    }
}
