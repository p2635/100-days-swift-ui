//: [Previous](@previous)

/*
 Day 8 - Closures Practice
 */
import Foundation

func gimmeFive() -> Int { 5 }
gimmeFive()

// Copy the function
var giveHimFive = gimmeFive
/* NOTE ON LINE 9:
 Same as `var giveHimFive () -> Void = gimmeFive`
 Void is basically the same as (), no parameters. But
 people like to see () -> Void since () -> () is too
 confusing.
 */
giveHimFive()

// Copy the return value from a function
var whatsInHere = gimmeFive()
print(whatsInHere)

// Directly assign a function (called a closure)
var whoLetTheDogsOut = {
    for _ in 0..<4 { print("Who") }
}
whoLetTheDogsOut()

// Parametrized closure
var greet = { (name: String) -> String in
    "What's up \(name)!!!"
}

/*
 Notice I haven't written 'greet(name: "John")'?
 Closures don't give a monkey about param names.
 */
greet("John")
greet("Alan")
greet("Simon")

/*
 Declare a list of fruits and a variable that
 stores a descending alphabetical version of that
 list.
 */
let fruits = ["banana", "apple", "grapes", "fig",
              "melon", "cranberry", "orange"]
print("--- Original fruits list (mixed order) ---")
for i in 0..<fruits.count {
    print("\(i). \(fruits[i])")
}

var reversed = fruits.sorted(by: >)
print("\n--- Alphabetical Descending ---")
print(reversed)
/*
 ["orange", "melon", "grapes", "fig",
 "cranberry", "banana", "apple"]
 */

/*
 Using the same list, make sure Banana is the first
 fruit, then sort the rest normally descending as
 you did above.
 */
let bananaIsBest = {
    (fruit1: String, fruit2: String) -> Bool in
    
    if fruit1 == "banana" {
        return true
    } else if fruit2 == "banana" {
        return false
    }
    return fruit1 > fruit2
}
var bananaReversed = fruits.sorted(by: bananaIsBest)
print("\n--- Banana Reversed ---")
print(bananaReversed)

/*
 ["banana", "orange", "melon", "grapes",
 "fig", "cranberry", "apple"]
 */

/*
 Declare an 'orange is best' closure directly
 as a parameter for the sorted() method. This time
 demonstrate you know how to use a trailing closure.
 All these are inferred:
 1. The 'by' bit is gone
 2. The type annotations for params are gone
 3. The return type is gone
 */
var orangeReversed = fruits.sorted{ (fruit1, fruit2) in
    if fruit1 == "orange" {
        return true
    } else if fruit2 == "orange" {
        return false
    }
    return fruit1 > fruit2
}

/*
 Declare a variable and store a closure in it. That
 closure should take in no parameters but return an
 Int value.
 */
var twoPlusTwo = { () -> Int in 2 + 2 }
print("\n--- 2 + 2 closure ---")
print(twoPlusTwo())

// Closer parameter shorthand
let declareLove = { $0 + " loves " + $1 }
print("\n--- Shorthand Parameter Closure ---")
var gossip = declareLove("John", "Samantha")
print(gossip)

// .filter() - find all fruits with the letter 'L'
print("\n--- All fruits containing the letter 'L' ---")
let hasL = fruits.filter { $0.contains("l") }
print(hasL)

// .map() - make the fruits list uppercased
print("\n--- Fruits list all uppercased ---")
let uppercaseFruits = fruits.map { $0.uppercased() }
print(uppercaseFruits)

func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("About to start first work")
    first()
    print("About to start second work")
    second()
    print("About to start third work")
    third()
    print("Done!")
}

// using the function normally with closures.
doImportantWork(first: {
    print("one")
}, second: {
    print("two")
}, third: {
    print("three")
})

// same as this (trailing closure)
doImportantWork {
    print("1")
} second: {
    print("2")
} third: {
    print("3")
}

//: [Next](@next)
