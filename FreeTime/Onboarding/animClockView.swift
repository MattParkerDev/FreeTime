//
//  animClockView.swift
//  FreeTime
//
//  Created by Matthew Parker on 28/5/22.
//

import SwiftUI

struct animClockView: View {
    var body: some View {
        ZStack {
            Circle()
                .strokeBorder(.black, lineWidth: 15)
                .frame(width: 200, height: 200)
                
//            Circle()
//                .fill(Color(.yellow))
//                .frame(width: 50, height: 50)
            
        }
        
    }
}

struct animClockView_Previews: PreviewProvider {
    static var previews: some View {
        animClockView()
    }
}
