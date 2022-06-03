//
//  OBWorkView.swift
//  FreeTime
//
//  Created by Matthew Parker on 25/3/22.
//

import SwiftUI

struct OBWorkView: View {
    @EnvironmentObject var userData: UserData
    @Binding var activePage: Int
    @State var input: String = ""
    @State var hasRun: Bool = false
    var body: some View {
        VStack {
            Text("How many hours do you work per week, including travel time?")
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
                        if  userData.workHoursWeekly != 0.0 {
                            input = String(userData.workHoursWeekly)
                        }
                    }
                }
                .onChange(of: activePage, perform: {_ in
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        userData.workHoursWeekly = Double(input) ?? 0.0
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

struct OBWorkView_Previews: PreviewProvider {
    static var previews: some View {
        OBWorkView(activePage: .constant(2))
            .preferredColorScheme(.dark)
            .environmentObject(UserData())
    }
}
