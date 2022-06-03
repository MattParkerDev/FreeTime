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
        VStack(spacing: 6) {
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
        .padding(10)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(Color(hue: 1.0, saturation: 0.0, brightness: 0.16))
                .shadow(color: .black, radius: 18, x: 10, y: 10)
        )
        
    }
}

struct PieLegendView_Previews: PreviewProvider {
    static var previews: some View {
        PieLegendView()
            .environmentObject(UserData())
            .preferredColorScheme(.dark)
    }
}
