//
//  FreeTime.swift
//  FreeTime
//
//  Created by Matthew Parker on 4/4/22.
//

import Foundation
import SwiftUI

class UserData: ObservableObject {
    @Published var sleepHoursDaily: Double
    @Published var workHoursWeekly: Double
    @Published var choreHoursWeekly: Double
    @Published var shouldShowOnboarding: Bool
    @Published var sleepHoursWeekly: Double
    @Published var freeHoursWeekly: Double
    @Published var slicesArray: Array<PieSliceData>
    
    init() {
        self.sleepHoursDaily = UserDefaults.standard.double(forKey: "sleepHoursDaily")
        self.workHoursWeekly = UserDefaults.standard.double(forKey: "workHoursWeekly")
        self.choreHoursWeekly = UserDefaults.standard.double(forKey: "choreHoursWeekly")
        if UserDefaults.standard.object(forKey: "shouldShowOnboarding") == nil  {
            self.shouldShowOnboarding = true
        }
        else {
            self.shouldShowOnboarding = UserDefaults.standard.bool(forKey: "shouldShowOnboarding")
        }
        self.sleepHoursWeekly = 0
        self.freeHoursWeekly = 0
        self.slicesArray = []
        self.freeHoursWeekly = calcFreeTime()
        self.sleepHoursWeekly = self.sleepHoursDaily * 7
        self.pieDataGen()
    }
    func save() {
        UserDefaults.standard.set(sleepHoursDaily, forKey: "sleepHoursDaily")
        UserDefaults.standard.set(workHoursWeekly, forKey: "workHoursWeekly")
        UserDefaults.standard.set(choreHoursWeekly, forKey: "choreHoursWeekly")
        UserDefaults.standard.set(shouldShowOnboarding, forKey: "shouldShowOnboarding")
        self.sleepHoursWeekly = sleepHoursDaily * 7
        
    }
    func calcFreeTime() -> Double {
        var freeHours: Double
        freeHours = 168 - self.sleepHoursWeekly - self.workHoursWeekly - self.choreHoursWeekly
        return freeHours
    }
    func pieDataGen() {
        let maxTime: Double = 168
        let sleepHours:Double = self.sleepHoursWeekly
        let workHours: Double = self.workHoursWeekly
        let choreHours:Double = self.choreHoursWeekly
        let freeTimeHours = maxTime - sleepHours - workHours - choreHours
        
        let percentages = [
            ("Sleep", sleepHours, Color.blue),
            ("Work", workHours, Color.red),
            ("Chores", choreHours, Color.green),
            ("Free Time", freeTimeHours, Color.yellow)
        ].map {label, hours, colour  in
            return (label, hours/maxTime, hours, colour)
        }
        var pieSlices: [PieSliceData] = []
        var startAngle: Double = 0
        for (label, percentage, hours, colour) in percentages {
            let data = PieSliceData(
                startAngle: Angle(degrees: startAngle),
                endAngle: Angle(degrees: startAngle + percentage * 360),
                text: label,
                color: colour,
                label: String(Int(round(percentage * 100))) + "%",
                value: hours
            )
            pieSlices.append(data)
            startAngle += percentage * 360
        }
        self.slicesArray = pieSlices
    }
}
