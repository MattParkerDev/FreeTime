//
//  FreeTimeApp.swift
//  FreeTime
//
//  Created by Matthew Parker on 20/3/22.
//

import SwiftUI

@main
struct FreeTimeApp: App {
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(UserData())
        }
    }
}
