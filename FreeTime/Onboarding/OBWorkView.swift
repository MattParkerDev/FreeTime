//
//  OBWorkView.swift
//  FreeTime
//
//  Created by Matthew Parker on 25/3/22.
//

import SwiftUI

struct OBWorkView: View {
    @EnvironmentObject var userData: UserData
    var body: some View {
        VStack {
            Spacer()
            Text("Please enter how many hours you work per week. Please include travel time to and from work.")
                .padding()
                .navigationTitle("Work")
                .navigationBarTitleDisplayMode(.large)
            TextField("Enter your work hours", value: $userData.workHoursWeekly, format: .number)
                .padding()
            Spacer()
            Button(action: {}) {
                NavigationLink(destination: OBChoresView()) {
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

struct OBWorkView_Previews: PreviewProvider {
    static var previews: some View {
        OBWorkView()
            .environmentObject(UserData())
    }
}
