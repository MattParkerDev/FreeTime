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
                PieChartView()
                    .padding()
                    .aspectRatio(1, contentMode: .fit)
                PieLegendView()
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
