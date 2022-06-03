//
//  PieChartView.swift
//  FreeTime
//
//  Created by Matthew Parker on 8/5/22.
//

import SwiftUI

struct PieChartView: View {
    @EnvironmentObject var userData: UserData
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                ForEach(userData.slicesArray) { slice in
                    PieSliceView(pieSliceData:slice)
                }
                Circle()
                    .fill(Color(hue: 1.0, saturation: 0.0, brightness: 0.16))
                    .frame(width: geometry.size.width / 1.7, height: geometry.size.width / 1.7)
                VStack {
                    Text("Total")
                        .font(.title)
                        .foregroundColor(Color.gray)
                    Text("168 Hrs")
                        .font(.title)
                }
            }
        }
        .background(Circle().shadow(color: .black, radius: 18, x: 9, y: 9))
        .aspectRatio(1, contentMode: .fit)
    }
}

struct PieChartView_Previews: PreviewProvider {
    static var previews: some View {
        PieChartView()
            .preferredColorScheme(.dark)
            .environmentObject(UserData())
    }
}
