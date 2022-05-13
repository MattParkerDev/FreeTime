//
//  OBSleepView.swift
//  FreeTime
//
//  Created by Matthew Parker on 20/3/22.
//

import SwiftUI

struct OBSleepView: View {
    @EnvironmentObject var userData: UserData
    @State var input: String = ""
    var body: some View {
        VStack {
            Spacer()
            Text("Please enter how much sleep you get on average per night:")
                .padding()
                .navigationTitle("Sleep")
                .navigationBarTitleDisplayMode(.large)
            if #available(iOS 15.0, *) {
                TextField("Enter your sleep Hours", value: $userData.sleepHoursDaily, format: .number)
                    .padding()
                    .keyboardType(.decimalPad)
            } else {
                TextField("Enter your sleep Hours", text: $input)
                    .padding()
                    .keyboardType(.decimalPad)
                    .onAppear {
                        if  userData.sleepHoursDaily != 0.0 {
                            input = String(userData.sleepHoursDaily)
                        }
                    }
                    .onDisappear {
                        userData.sleepHoursDaily = Double(input) ?? 0.0
                    }
            }

            
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
            .environmentObject(UserData())
    }
}
