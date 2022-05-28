//
//  animClockView.swift
//  FreeTime
//
//  Created by Matthew Parker on 28/5/22.
//

import SwiftUI

struct animClockView: View {
    @State private var minuteHandAngle: Double = 180.0
    @State private var hourHandAngle: Double = 0.0
    var body: some View {
        ZStack {
            Circle()
                .strokeBorder(lineWidth: 16)
                .frame(width: 200, height: 200)
            RoundedRectangle(cornerSize: CGSize(width: 8.0, height: 20.0))
                .trim(from: 0, to: 0.5)
                .frame(width: 14, height: 140)
                .rotationEffect(Angle(degrees: minuteHandAngle), anchor: .center)
                .onAppear {
                    withAnimation(.linear(duration: 5.0).repeatForever(autoreverses: false)) {
                        minuteHandAngle = 540.0
                    }
                }
            RoundedRectangle(cornerSize: CGSize(width: 8.0, height: 20.0))
                .trim(from: 0, to: 0.5)
                .frame(width: 14, height: 100)
                .rotationEffect(Angle(degrees: hourHandAngle), anchor: .center)
                .onAppear {
                    withAnimation(.linear(duration: 60.0).repeatForever(autoreverses: false)) {
                        hourHandAngle = 360.0
                    }
                }
            Circle()
                .frame(width: 14, height: 14)
        }
        
    }
}

struct animClockView_Previews: PreviewProvider {
    static var previews: some View {
        animClockView()
    }
}
