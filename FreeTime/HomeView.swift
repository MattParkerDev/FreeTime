//
//  ContentView.swift
//  FreeTime
//
//  Created by Matthew Parker on 20/3/22.
//

import SwiftUI



struct HomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.blue
                    .padding()
            }
            .navigationTitle("Home")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
