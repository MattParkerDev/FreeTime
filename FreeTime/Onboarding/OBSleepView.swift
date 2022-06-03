//
//  OBSleepView.swift
//  FreeTime
//
//  Created by Matthew Parker on 20/3/22.
//

import SwiftUI

struct OBSleepView: View {
    @EnvironmentObject var userData: UserData
    @Binding var activePage: Int
    @State var input: String = ""
    @State var hasRun: Bool = false
    var body: some View {
        VStack {
            Text("How much sleep do you get on average per night?")
                .padding(.horizontal)
                .padding(.vertical, 25)
            
            TextField("", text: $input)
                .font(.system(size: 54))
                .background(RoundedRectangle(cornerRadius: 10).fill(Color(hue: 1.0, saturation: 0.0, brightness: 0.26)))
                .multilineTextAlignment(.center)
                .padding(.horizontal)
                .padding(.bottom, 20)
                .keyboardType(.decimalPad)
                .onAppear {
                    if hasRun == false {
                        hasRun = true
                        if  userData.sleepHoursDaily != 0.0 {
                            input = String(userData.sleepHoursDaily)
                        }
                    }
                }
                .onChange(of: activePage, perform: {_ in
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        userData.sleepHoursDaily = Double(input) ?? 0.0
                    }
                })
        }
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(Color(hue: 1.0, saturation: 0.0, brightness: 0.16))
                .shadow(color: .black, radius: 18, x: 10, y: 10)
        )
        .padding()
    }
}

struct OBSleepView_Previews: PreviewProvider {
    static var previews: some View {
        OBSleepView(activePage: .constant(1))
            .preferredColorScheme(.dark)
            .environmentObject(UserData())
    }
}
