//: [Previous](@previous)

import Foundation

// for loops help for a finite amount of data, such as a range or an array.
// while loops help when you need a custom condition.

// Do a 3, 2, 1 blast off
var countdown = 3

while countdown > 0 {
    print("\(countdown)...")
    countdown -= 1
}
print("Blast off!")

// Simulator a d20 dice roll until you get a cri (D20)
var die = 0
var turn = 1

while die != 20 {
    die = Int.random(in: 1...20)
    print("Turn \(turn): Rolled \(die).")
    turn += 1
}
print("Critical Hit!")

//: [Next](@next)
