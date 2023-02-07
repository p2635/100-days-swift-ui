//: [Previous](@previous)

import Foundation

struct Player {
    let name: String
    let number: Int
}

// Memberwise initializer
let player = Player(name: "Megan R", number: 15)

// Declare an init of your own
struct Toy {
    let name: String
    let size: Int
    
    init(name:String){
        self.name = name
        self.size = Int.random(in: 1...50)
    }
}

let toy = Toy(name: "Lightyear")
print(toy.name)
print(toy.size)

//: [Next](@next)
