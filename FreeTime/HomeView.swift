//
//  ContentView.swift
//  FreeTime
//
//  Created by Matthew Parker on 20/3/22.
//

import SwiftUI



struct HomeView: View {
    @Binding var sleepHours: String
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text("Hours of Sleep: " + sleepHours)
                Color.blue
                    .frame(width: 300, height: 400)
            }
            .navigationTitle("Home")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(sleepHours: .constant(""))
    }
}
