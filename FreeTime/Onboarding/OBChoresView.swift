//
//  OBChoresView.swift
//  FreeTime
//
//  Created by Matthew Parker on 25/3/22.
//

import SwiftUI

struct OBChoresView: View {
    @EnvironmentObject var userData: UserData
    @State var input: String = ""
    var body: some View {
        VStack {
            Spacer()
            Text("Please enter how many hours per week you spend on chores such as grocery shopping or doing washing:")
                .padding()
                .navigationTitle("Chores")
                .navigationBarTitleDisplayMode(.large)
            if #available(iOS 15.0, *) {
                TextField("Enter your chore hours", value: $userData.choreHoursWeekly, format: .number)
                    .padding()
                    .keyboardType(.decimalPad)
            } else {
                TextField("Enter your chore hours", text: $input)
                    .padding()
                    .keyboardType(.decimalPad)
                    .onAppear {
                        if  userData.choreHoursWeekly != 0.0 {
                            input = String(userData.choreHoursWeekly)
                        }
                    }
                    .onDisappear {
                        userData.choreHoursWeekly = Double(input) ?? 0.0
                    }
            }
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
