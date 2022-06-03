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
        VStack(spacing: 0) {
            Spacer()
            HStack {
                Text("Home")
                    .bold()
                    .font(.largeTitle)
                    .padding(.leading)
                Spacer()
            }
            PieChartView()
                .padding(.horizontal)
                .padding(.top, 8)
            Spacer()
            PieLegendView()
                .padding(.horizontal)
                .padding(.vertical, 10)
            Spacer()
        }
        .background(GradientView())
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .preferredColorScheme(.dark)
            .environmentObject(UserData())
    }
}
