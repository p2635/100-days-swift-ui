//: [Previous](@previous)

/*:
 [100 Days of SwiftUI](https://www.hackingwithswift.com/100/swiftui/)
 
 Day 3 - Type Annotations
 
 Morale of the story: Paul prefers to use type inference as much as possible.

*/
import Foundation

// This is called type inference, it infers the type by the assigned value.
var inferred = "Look at me, I'm a String now."

// Declare a variables with explicit type annotations
var greeting: String = "Hello, playground"
var farewell: String = "Hasta la vista, baby"
var adult: Bool = true

// Arrays
var myNumbers: [Int] = [Int]() // or simply '= []'
myNumbers.append(2)
myNumbers.append(3)
myNumbers.append(4)
print(myNumbers)

// Dictionaries
var myDict: [String: String] = ["word": "apple", "definition": "A red/green fruit."]
print(myDict)

// Sets
var mySet: Set<Int> = Set([1, 4, 5, 6, 7, 6, 6, 6])
print(mySet)

//: [Next](@next)
