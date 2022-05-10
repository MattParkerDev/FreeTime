//
//  HomeView.swift
//  FreeTime
//
//  Created by Matthew Parker on 20/3/22.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var userData: UserData
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text("Weekly Hours")
                Text("Hours of Sleep: " + String(userData.sleepHoursWeekly))
                Text("Hours of Work: " + String(userData.workHoursWeekly))
                Text("Hours of Chores: " + String(userData.choreHoursWeekly))
                PieChartView()
                    .padding()
                Spacer()
            }
            .navigationTitle("Home")

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .preferredColorScheme(.dark)
            .environmentObject(UserData())
    }
}
