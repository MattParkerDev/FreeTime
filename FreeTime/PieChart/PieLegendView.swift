//
//  PieLegendView.swift
//  FreeTime
//
//  Created by Matthew Parker on 11/5/22.
//

import SwiftUI

struct PieLegendView: View {
    @EnvironmentObject var userData: UserData
    var body: some View {
        VStack {
            ForEach(userData.slicesArray) { slice in
                HStack {
                    RoundedRectangle(cornerRadius: 5.0)
                        .fill(slice.color)
                        .frame(width: 20, height: 20)
                    Text(slice.text)
                    Spacer()
                    VStack(alignment: .trailing) {
                        Text(String(slice.value) + "hrs")
                        Text(slice.label)
                            .foregroundColor(Color.gray)
                    }
                }
            }
        }
        .padding(.leading)
        .padding(.trailing)
    }
}

struct PieLegendView_Previews: PreviewProvider {
    static var previews: some View {
        PieLegendView()
            .environmentObject(UserData())
    }
}
