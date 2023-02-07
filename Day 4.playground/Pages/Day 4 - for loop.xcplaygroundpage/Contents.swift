//: [Previous](@previous)

/*:
 [100 Days of SwiftUI](https://www.hackingwithswift.com/100/swiftui/)
 
 Day 4 - foor loops
 
 for loops help for a finite amount of data, such as a range or an array.
 while loops help when you need a custom condition.
*/
import Foundation

// Write a for loops that prints out a list of fruits
var fruits = ["apple", "banana", "pear", "grapefruit"]
for fruit in fruits {
    print("I like \(fruit).")
}
print() // print an empty line

// Write a for loop for the 2 times table (up until 20)
for i in 1...20 {
    print("\(i) x 2 = \(i * 2)")
}
print()

// again but up until 19
for i in 1..<20 {
    print("\(i) x 2 = \(i * 2)")
}
print()

// Don't care about the loop variable here
var sentence = "God, please grant me a "
for _ in 1..<5 {
    sentence += "super duper "
}
sentence += "pretty spouse."
print(sentence)

// Print out ranges of an array
var numbers = [1, 2, 3, 4, 5, 100_000]
print(numbers[0...]) // Print out the whole array
print(numbers[2...]) // Print from the 3rd index
print(numbers[2...4]) // Print from the 3rd to 5th index

//: [Next](@next)
