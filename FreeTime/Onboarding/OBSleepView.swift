//
//  OBSleepView.swift
//  FreeTime
//
//  Created by Matthew Parker on 20/3/22.
//

import SwiftUI

struct OBSleepView: View {
    var body: some View {
        VStack {
            Text("To begin")
                .navigationTitle("Sleep")
                .navigationBarTitleDisplayMode(.large)
            Button(action: {}) {
                NavigationLink(destination: OBFinalView()) {
                    Text("Next")
                        .frame(width: 300, height: 50)
                        .foregroundColor(Color.white)
                        .background(Color.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
            }
        }
    }
}

struct OBSleepView_Previews: PreviewProvider {
    static var previews: some View {
        OBSleepView()
    }
}
