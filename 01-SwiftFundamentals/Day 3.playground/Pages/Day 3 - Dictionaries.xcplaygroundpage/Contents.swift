//: [Previous](@previous)

/*:
 [100 Days of SwiftUI](https://www.hackingwithswift.com/100/swiftui/)
 
 Day 3 - Dictionaries
*/
import Foundation

// Dictionaries
let employee2 = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashville"
]

// Prints 'Optional("Taylor Swift")' etc.
// XCode warnings are expected
print(employee2["name"])
print(employee2["job"])
print(employee2["location"])

// Prints the correct value "Taylor Swift" etc
print(employee2["name", default: "Unknown"])
print(employee2["job", default: "Unknown"])
print(employee2["location", default: "Unknown"])

// No such key
print(employee2["age", default: "Unknown"])

// Declaring a dictionary with type annotation
var heights = [String: Int]()
heights["Yao Ming"] = 229
heights["Shaquille O'Neal"] = 216
heights["LeBron James"] = 206
print(heights)

//: [Next](@next)
