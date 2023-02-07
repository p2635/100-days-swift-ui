//: [Previous](@previous)

import Foundation

//The challenge is this: write a function that accepts an integer from 1 through 10,000, and returns the integer square root of that number. That sounds easy, but there are some catches:
//
//    (DONE) You can’t use Swift’s built-in sqrt() function or similar – you need to find the square root yourself.
//    (DONE) If the number is less than 1 or greater than 10,000 you should throw an “out of bounds” error.
//    (DONE) You should only consider integer square roots – don’t worry about the square root of 3 being 1.732, for example.
//    (DONE) If you can’t find the square root, throw a “no root” error.
//
// As a reminder, if you have number X, the square root of X will be another number that, when multiplied by itself, gives X. So, the square root of 9 is 3, because 3x3 is 9, and the square root of 25 is 5, because 5x5 is 25.

enum SquareRootError:Error {
    case outOfBounds, noRoot
}

func getSquareRoot(_ number: Int) throws -> Int {
        
    if number < 1 || number > 10_000 {
        throw SquareRootError.outOfBounds
    }
    
    // Do a lot of manual squaring to get to the result
    for i in 2...number {
        if i * i == number {
            return i
        }
    }
    
    throw SquareRootError.noRoot
}

// Test data
let numbers = [
    -50,
    4,
    5,
    45,
    25,
    100,
    1849,
    302,
    406,
    98,
    20_000_000
]

// This is what unit testing is for! I haven't learned how to do it yet.
for i in 0..<numbers.count {
    
    var currentNumber = numbers[i]
    
    print(currentNumber)

    do {
        let result = try getSquareRoot(currentNumber)
        print("The square root is \(result).")
    } catch SquareRootError.outOfBounds {
        print("Error: Your number must be between 1-10,000.")
    } catch SquareRootError.noRoot {
        print("Error: No square root found.")
    } catch {
        print("Unknown generic error.")
    }
    
    print()
}


//: [Next](@next)
