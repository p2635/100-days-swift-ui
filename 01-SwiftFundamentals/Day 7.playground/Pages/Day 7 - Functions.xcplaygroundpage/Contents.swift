//: [Previous](@previous)

import Foundation

// Create a function that will let you roll any dice
func rollDice(sides: Int = 6) -> Int {
    // How do I make sure the dev only inputs a number > 1?
    Int.random(in: 1...sides)
}

print("Rolling a 6 sided die 10 times.")
for _ in 1...10 {
    print(rollDice())
}

// Check if two strings have the same letters
func stringsHaveSameLetters(_ string1: String, _ string2: String) -> Bool {
    // These are called expressions. When code can be boiled down to a single value, such as true, false, “Hello”, or 19.
    string1.sorted() == string2.sorted()
}

// These are called statements, creating vars, starting loops etc.
var string1 = "aabcdefg"
var string2 = "gfedcbaa"
string1 == string2 // should be false
stringsHaveSameLetters(string1, string2) // should be true

// Ternary operator
func greetBatman(name: String) -> String {
    name == "Batman" ? "Why is your voice so deep?" : "Hi, ordinary human."
}
greetBatman(name: "Batman")
greetBatman(name: "Bob")

//: [Next](@next)
