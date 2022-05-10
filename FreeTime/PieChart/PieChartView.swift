//
//  PieChartView.swift
//  FreeTime
//
//  Created by Matthew Parker on 8/5/22.
//

import SwiftUI

struct PieChartView: View {
    @EnvironmentObject var userData: UserData
    @State private var pieSlices: [PieSliceData] = []
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                ForEach(self.pieSlices) { slice in
                    PieSliceView(pieSliceData:slice)
                }
                .frame(width: geometry.size.width, height: geometry.size.height)
            }
            .onAppear{
                let maxTime: Double = 168
                let sleepHours:Double = userData.sleepHoursWeekly
                let workHours: Double = userData.workHoursWeekly
                let choreHours:Double = userData.choreHoursWeekly
                let freeTimeHours = maxTime - sleepHours - workHours - choreHours
                
                let percentages = [
                    ("Sleep", sleepHours, Color.blue),
                    ("Work", workHours, Color.red),
                    ("Chores", choreHours, Color.green),
                    ("Free Time", freeTimeHours, Color.yellow)
                ].map {label, hours, colour  in
                    return (label, hours/maxTime, colour)
                }
                var pieSlices: [PieSliceData] = []
                var startAngle: Double = 0
                for (label, percentage, colour) in percentages {
                    let data = PieSliceData(
                        startAngle: Angle(degrees: startAngle),
                        endAngle: Angle(degrees: startAngle + percentage * 360),
                        text: label,
                        color: colour
                    )
                    pieSlices.append(data)
                    startAngle += percentage * 360
                }
                self.pieSlices = pieSlices
            }
        }
    }
}
struct PieChartView_Previews: PreviewProvider {
    static var previews: some View {
        PieChartView()
            .environmentObject(UserData())
    }
}
