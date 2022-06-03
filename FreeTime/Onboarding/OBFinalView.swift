//
//  OBFinalView.swift
//  FreeTime
//
//  Created by Matthew Parker on 20/3/22.
//

import SwiftUI

struct OBFinalView: View {
    @EnvironmentObject var userData: UserData
    @Binding var activePage: Int
    var body: some View {
        VStack {
            Spacer()
            Text("Welcome to Free Time!")
                .font(.title)
            Spacer()
        }
    }
}
struct OBFinalView_Previews: PreviewProvider {
    static var previews: some View {
        OBFinalView(activePage: .constant(4))
            .environmentObject(UserData())
    }
}
