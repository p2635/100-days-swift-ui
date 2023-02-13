//: [Previous](@previous)

/*
 Your challenge is this: write a function that accepts an optional array of integers, and returns one randomly. If the array is missing or empty, return a random number in the range 1 through 100.

 If that sounds easy, it’s because I haven’t explained the catch yet: I want you to write your function in a single line of code.
 */

import Foundation

func randomInt(from array: [Int]?) -> Int{
  array?.randomElement() ?? Int.random(in: 1...100)
}

// Testing out the method
var myIntArray: [Int]?
var results = [Int]()
for _ in 1...50 {
  results.append(randomInt(from: myIntArray))
}
print(results)

results.removeAll(keepingCapacity: true)
for _ in 1...50 {
  results.append(randomInt(from: [200, 300, 400, 500, 600]))
}
print(results)


//: [Next](@next)
