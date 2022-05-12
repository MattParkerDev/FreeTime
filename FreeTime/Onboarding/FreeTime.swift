//
//  FreeTime.swift
//  FreeTime
//
//  Created by Matthew Parker on 4/4/22.
//

import Foundation



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
}

