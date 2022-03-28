//
//  OBWorkView.swift
//  FreeTime
//
//  Created by Matthew Parker on 25/3/22.
//

import SwiftUI

struct OBWorkView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("To begin")
                .navigationTitle("Work")
                .navigationBarTitleDisplayMode(.large)
            Spacer()
            Button(action: {}) {
                NavigationLink(destination: OBChoresView()) {
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

struct OBWorkView_Previews: PreviewProvider {
    static var previews: some View {
        OBWorkView()
    }
}
