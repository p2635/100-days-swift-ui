//: [Previous](@previous)

/*:
 [100 Days of SwiftUI](https://www.hackingwithswift.com/100/swiftui/)
 
 Day 3 - Sets
*/
import Foundation

// Notice values are unique and sets are not ordered.
let mySet = Set(["One", "Two", "Three", "Four", "One", "One"])
print(mySet)

// Declare an empty set with explicit type (This is called Type Annotation)
var numbersSet = Set<Int>()
numbersSet.insert(1)
numbersSet.insert(3)
numbersSet.insert(5)
numbersSet.insert(6)
numbersSet.insert(4)
numbersSet.insert(4) // Shouldn't add, since it already exists
print(numbersSet)

// Does it contain x?
numbersSet.contains(1)
numbersSet.contains(100)

// Show me the set in order this time
numbersSet.sorted()

//: [Next](@next)
