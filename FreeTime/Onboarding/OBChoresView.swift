//
//  OBChoresView.swift
//  FreeTime
//
//  Created by Matthew Parker on 25/3/22.
//

import SwiftUI

struct OBChoresView: View {
    @EnvironmentObject var userData: UserData
    @Binding var activePage: Int
    @State var input: String = ""
    @State var hasRun: Bool = false
    var body: some View {
        VStack {
            Text("How many hours per week you spend doing chores such as grocery shopping or washing?")
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
                        if  userData.choreHoursWeekly != 0.0 {
                            input = String(userData.choreHoursWeekly)
                        }
                    }
                }
                .onChange(of: activePage, perform: {_ in
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        userData.choreHoursWeekly = Double(input) ?? 0.0
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

struct OBChoresView_Previews: PreviewProvider {
    static var previews: some View {
        OBChoresView(activePage: .constant(3))
            .environmentObject(UserData())
    }
}
