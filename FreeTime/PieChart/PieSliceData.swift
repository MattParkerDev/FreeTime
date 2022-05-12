//
//  PieSliceData.swift
//  FreeTime
//
//  Created by Matthew Parker on 8/5/22.
//

import Foundation
import SwiftUI

struct PieSliceData: Identifiable {
    var id = UUID()
    var startAngle: Angle
    var endAngle: Angle
    var text: String
    var color: Color
    var label: String
    var value: Double
}
