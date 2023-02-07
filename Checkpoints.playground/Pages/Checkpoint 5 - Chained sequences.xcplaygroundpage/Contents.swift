//: [Previous](@previous)

import Foundation

//You’ve already met sorted(), filter(), map(), so I’d like you to put them together in a chain – call one, then the other, then the other back to back without using temporary variables.
//
//Your input is this:
let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

//Your job is to:
//
//    Filter out any numbers that are even
//    Sort the array in ascending order
//    Map them to strings in the format “7 is a lucky number”
//    Print the resulting array, one item per line
//
// I could use $0 instead of num, but I prefer readability.
luckyNumbers.filter{ (num) in !(num.isMultiple(of: 2)) }
        .sorted()
        .map { (num) in "\(num) is a lucky number" }
        .forEach { print($0) }

//So, your output should be as follows:
//
//7 is a lucky number
//15 is a lucky number
//21 is a lucky number
//31 is a lucky number
//33 is a lucky number
//49 is a lucky number

//: [Next](@next)
