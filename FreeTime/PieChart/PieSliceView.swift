//
//  PieSliceView.swift
//  FreeTime
//
//  Created by Matthew Parker on 5/4/22.
//

import SwiftUI

struct PieSliceView: View {
    @Environment(\.colorScheme) var colorScheme
    let pieSliceData: PieSliceData
    var midRadians: Double {
        return Double.pi / 2.0 - (pieSliceData.startAngle + pieSliceData.endAngle).radians / 2.0
    }
    var body: some View {
        GeometryReader { geometry in
            ZStack {
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
                
                if colorScheme == .dark {
                    Text(pieSliceData.label)
                        .position(
                            x: geometry.size.width * 0.5 * CGFloat(1.0 + 0.78 * cos(midRadians)),
                            y: geometry.size.height * 0.5 * CGFloat(1.0 - 0.78 * sin(midRadians))
                        )
                        .shadow(color: Color(UIColor.systemBackground), radius: 2)
                } else {
                    Text(pieSliceData.label)
                        .position(
                            x: geometry.size.width * 0.5 * CGFloat(1.0 + 0.78 * cos(midRadians)),
                            y: geometry.size.height * 0.5 * CGFloat(1.0 - 0.78 * sin(midRadians))
                        )
                }
                
                
                
            }
        }
        .aspectRatio(1, contentMode: .fit)
    }
}

struct PieSliceView_Previews: PreviewProvider {
    static var previews: some View {
        PieSliceView(pieSliceData: PieSliceData(startAngle: Angle(degrees: 0.0), endAngle: Angle(degrees: 45.0), text: "Sleep", color: Color.blue, label: "40%", value: 56.0))
    }
}
