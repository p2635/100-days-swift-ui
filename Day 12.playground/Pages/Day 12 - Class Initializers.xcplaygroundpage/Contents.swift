//: [Previous](@previous)

import Foundation

/*
 Write a super class of Human that simply has a var and initializer
 Write one subclasse called Warrior which has an extra var and
 initializer.
 */
class Human {
    var strength: Int
    
    init(strength: Int = 0) {
        self.strength = strength
    }
}

class Warrior: Human {
    
    var hasSword: Bool
    
    init(strength: Int = 10, hasSword: Bool = true) {
        self.hasSword = hasSword
        super.init(strength: strength)
    }
}

let pleb = Human()
print(pleb.strength)

let orc = Warrior()
print(orc.hasSword)
print(orc.strength)

//: [Next](@next)
