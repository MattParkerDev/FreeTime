//
//  OBChoresView.swift
//  FreeTime
//
//  Created by Matthew Parker on 25/3/22.
//

import SwiftUI

struct OBChoresView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("To begin")
                .navigationTitle("Chores")
                .navigationBarTitleDisplayMode(.large)
            Spacer()
            Button(action: {}) {
                NavigationLink(destination: OBFinalView()) {
                    Text("Next")
                        .frame(width: 300, height: 50)
                        .foregroundColor(Color.white)
                        .background(Color.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
            }
            .padding()
        }
    }
}

struct OBChoresView_Previews: PreviewProvider {
    static var previews: some View {
        OBChoresView()
    }
}
