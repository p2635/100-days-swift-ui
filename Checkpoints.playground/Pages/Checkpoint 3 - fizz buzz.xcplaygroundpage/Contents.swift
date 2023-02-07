//: [Previous](@previous)

//The problem is called fizz buzz, and has been used in job interviews, university entrance tests, and more for as long as I can remember. Your goal is to loop from 1 through 100, and for each number:
//
//    If it’s a multiple of 3, print “Fizz”
//    If it’s a multiple of 5, print “Buzz”
//    If it’s a multiple of 3 and 5, print “FizzBuzz”
//    Otherwise, just print the number.
//
//So, here are some example values you should have when your code runs:
//
//    1 should print “1”
//    2 should print “2”
//    3 should print “Fizz”
//    4 should print “4”
//    5 should print “Buzz”
//    6 should print “Fizz”
//    7 should print “7”
//    …
//    15 should print “FizzBuzz”
//    …
//    100 should print “Buzz”
//
//Before you start: This problem seems extremely simple, but many, many developers struggle to solve it. I’ve seen it happen personally, so don’t stress about it – just trying to solve the problem already teaches you about it.
//
//You already know everything you need to solve that problem, but if you’d like some hints then I’ll add some below.
//
//Please go ahead and try building the playground now.

import Foundation

for i in 1...100 {
    
    if i.isMultiple(of: 3) && i.isMultiple(of: 5) {
        print("FizzBuzz")
    } else if i.isMultiple(of: 3) {
        print("Fizz")
    } else if i.isMultiple(of: 5) {
        print("Buzz")
    } else {
        print(i)
    }
    
}

//: [Next](@next)
