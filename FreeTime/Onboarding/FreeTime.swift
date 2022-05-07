//
//  FreeTime.swift
//  FreeTime
//
//  Created by Matthew Parker on 4/4/22.
//

import Foundation



struct FreeTime {
    
    var sleepHours: Int = 8
    var workHours: Int = 36
    var choreHours: Int = 5
    
    func calcFreeTime(sleepHours: Int, workHours: Int, choreHours: Int) -> Int {
        var freeHours: Int
        freeHours = 168 - sleepHours - workHours - choreHours
        print(freeHours)
        return freeHours
    }
}

class UserData: ObservableObject {
    @Published var sleepHoursDaily: Double
    @Published var workHoursWeekly: Double
    @Published var choreHoursWeekly: Double
    @Published var shouldShowOnboarding: Bool
    
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
        
    }
    func save() {
        UserDefaults.standard.set(sleepHoursDaily, forKey: "sleepHoursDaily")
        UserDefaults.standard.set(workHoursWeekly, forKey: "workHoursWeekly")
        UserDefaults.standard.set(choreHoursWeekly, forKey: "choreHoursWeekly")
        UserDefaults.standard.set(shouldShowOnboarding, forKey: "shouldShowOnboarding")
    }
}

