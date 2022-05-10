//
//  PieSliceView.swift
//  FreeTime
//
//  Created by Matthew Parker on 5/4/22.
//

import SwiftUI

struct PieSliceView: View {
    let pieSliceData: PieSliceData
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                let width: CGFloat = min(geometry.size.width, geometry.size.height)
                let height = width
                let centre = CGPoint(x: width * 0.5, y: height * 0.5)
                path.move(to: centre)
                path.addArc(center: centre,
                            radius: width * 0.5,
                            startAngle: Angle(degrees: -90.0) + pieSliceData.startAngle,
                            endAngle: Angle(degrees: -90.0) + pieSliceData.endAngle,
                            clockwise: false)
            }
            .fill(pieSliceData.color)
        }
        .aspectRatio(1, contentMode: .fit)
    }
}

struct PieSliceView_Previews: PreviewProvider {
    static var previews: some View {
        PieSliceView(pieSliceData: PieSliceData(startAngle: Angle(degrees: 0.0), endAngle: Angle(degrees: 45.0), text: "Sleep", color: Color.blue))
    }
}
