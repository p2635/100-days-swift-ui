//: [Previous](@previous)

/*:
 [100 Days of SwiftUI](https://www.hackingwithswift.com/100/swiftui/)
 
 Day 3 - Arrays
*/

import Foundation

// Declare an array of String, Int and Double
var names = ["JoJo", "Tanjiro", "Ichigo"]
var numbers = [1, 2, 3, 4, 5, 100_000]
var temperatures = [34.1, 53.5, 202.3]

// Declaring an array with mixed types is not allowed, Swift is type-safe.
// Error for `let mixed = ["Jojo", 2, 24.1]`

// Print the whole array
print(names, numbers, temperatures)

// Print out a specific element in the arrays above
print(names[1])
print(numbers[5])
print(temperatures[2])

// Will this wrap around? No, it doesn't work.
// print(numbers[-1])

// Add some items
names.append("Naruto")
numbers.append(239)
temperatures.append(12.32)
print(names, numbers, temperatures)

// Remove some items
names.removeFirst()
numbers.removeFirst()
temperatures.removeFirst()
print(names, numbers, temperatures)

// Declare arrays with type annotation
var names2 = Array<String>()

// or alternatively this.
var names3 = [String]()

// Check lengths
print(names.count)
print(numbers.count)
print(temperatures.count)

// Sort arrays
print(names.sorted())
print(numbers.sorted())
print(temperatures.sorted())

//: [Next](@next)
