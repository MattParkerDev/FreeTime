//
//  PieChartView.swift
//  FreeTime
//
//  Created by Matthew Parker on 5/4/22.
//

import SwiftUI

struct PieChartView: View {
    @EnvironmentObject var userData: UserData
    var body: some View {
        VStack {
            Text("Pie Chart Placeholder")
            Text("Sleep Hours: " + String(userData.sleepHoursDaily))
            Text("Work Hours: " + String(userData.workHoursWeekly))
            Text("Chore Hours: " + String(userData.choreHoursWeekly))
            Text("Free Hours: " + String(userData.freeHoursWeekly))
        }
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        PieChartView()
            .environmentObject(UserData())
    }
}
