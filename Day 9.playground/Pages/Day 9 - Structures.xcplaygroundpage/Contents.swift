//: [Previous](@previous)

import Foundation

struct Employee {
    let name: String
    var holidayAssigned = 22
    var holidayTaken = 0
    var holidayRemaining: Int {
        get {
            holidayAssigned - holidayTaken
        }
        // You're effectively requesting extra leave!
        set {
            holidayAssigned = holidayTaken + newValue
        }
    }

    mutating func takeHoliday(days: Int) {
        if holidayRemaining > days {
            holidayRemaining -= days
            print("I'm going on vacation!")
            print("Days remaining: \(holidayRemaining)")
        } else {
            print("Oops! There aren't enough days remaining.")
        }
    }
}

// Declare as variable
var john = Employee(name: "John")
john.holidayAssigned
john.holidayRemaining
john.takeHoliday(days: 3)

// Declare as constant
let arthur = Employee(name: "arthur")
//arthur.takeHoliday(days: 3) - this fails, because all data is constant


//: [Next](@next)
