//: [Previous](@previous)

/*
 Optionals
 */

import Foundation

// Example stolen from the hackingwithswift website.
let opposites = [
    "Mario": "Wario",
    "Luigi": "Waluigi"
]

let peachOpposite = opposites["Peach"] // nil

/*
 Swift likes predictability, so optionals is a way
 to help us deal with variables or constants that
 may not have any value assigned to it at all. We
 need to unwrap optionals in order to use them, so
 that's safer than just receiving a 'nil'.
 
 Practice - define any optional then create an 'if'
 statement to deal with it.
 */
var hasEaten: Bool?
var askIfHungry = {
    if let hasEaten = hasEaten {
        print("I'm \(hasEaten ? "full" : "hungry").")
    } else {
        print("I don't know if you're hungry or not.")
    }
}

askIfHungry() // I don't know if you're hungry or not.

hasEaten = true
askIfHungry() // I'm full.

hasEaten = false
askIfHungry() // I'm hungry.

//: [Next](@next)
