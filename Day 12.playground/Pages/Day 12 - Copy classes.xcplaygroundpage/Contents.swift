//: [Previous](@previous)

import Foundation

// Main lesson is copied classes share a pot of data.

class Bob {
    var money: Int = 0
    
    // Produces a deep copy (shallow means copying reference I think)
    func copy() -> Bob {
        let bob = Bob()
        bob.money = money
        return bob
    }
}

var bob1 = Bob()
var bob2 = bob1 // References bob1
var bob3 = bob2 // References bob1

print("""
CLASSES
Before adding 5 virtual dollars to Bob1's pot.
Pot of money for: Bob1, Bob2 then Bob3.
""")
print(bob1.money, bob2.money, bob3.money, separator: ", ")

bob1.money += 5

print("After adding 5 virtual dollars to Bob1's pot.")
print(bob1.money, bob2.money, bob3.money, separator: ", ")
print()

print("Copying a Bob 4 from Bob 1...")
let bob4 = bob1.copy()
print("Bob 4 currently has \(bob4.money) virtual dosh.")
bob4.money += 5
print("Bob 4 got richer and now has \(bob4.money) virtual dosh.")
print("Bob 1 currently has \(bob1.money) virtual dosh.\n")

// Compare this to struct

struct John {
    var money: Int = 0
}

var john1 = John()
var john2 = john1 // References bob1
var john3 = john2 // References bob1

print("""
STRUCTURES
Before adding 5 virtual dollars to Bob1's pot.
Pot of money for: John1, John2 then John3.
""")
print(john1.money, john2.money, john3.money, separator: ", ")

john1.money += 5

print("After adding 5 virtual dollars to John1's pot.")
print(john1.money, john2.money, john3.money, separator: ", ")
print()

//: [Next](@next)
