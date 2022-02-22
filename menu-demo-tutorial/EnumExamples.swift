//
//  EnumExamples.swift
//  menu-demo-tutorial
//
//  Created by Michael Birkeland on 23/05/2021.
//

import SwiftUI

enum DayOfWeek: String {
    
    case monday,tuesday,wednesday,thursday,friday,saturday,sunday
    
}

enum ValidGames: String, CaseIterable {
    case division2 = "Division 2"
    case assassinsCreed = "Assassins Creed"
    
    var gameNames: String {
        switch self {
        case .division2:
            return "Division 2"
        case .assassinsCreed:
            return "Assassins Creed"
        }
    }
    
}

enum Activity {
    
    case eat(food: String)
    case game(name: ValidGames)
    case run(distance: Int)
    case sleep(hours: Int)
        
}

struct Activities {
    var dayOfWeek: DayOfWeek
    var morning: Activity
    var afternoon: Activity
    var evening: Activity
}

var myDay = Activities(dayOfWeek: .monday, morning: .eat(food: "Kesam"), afternoon: .game(name: .assassinsCreed), evening: .sleep(hours: 8))

let theDay = myDay.dayOfWeek.rawValue
let theGame = myDay.afternoon


