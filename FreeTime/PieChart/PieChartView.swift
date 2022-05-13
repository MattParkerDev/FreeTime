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
                    .fill(Color(UIColor.systemBackground))
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
    }
}
struct PieChartView_Previews: PreviewProvider {
    static var previews: some View {
        PieChartView()
            .preferredColorScheme(.dark)
            .environmentObject(UserData())
    }
}
