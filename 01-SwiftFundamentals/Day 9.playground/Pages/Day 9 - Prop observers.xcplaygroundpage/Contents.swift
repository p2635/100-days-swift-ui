//: [Previous](@previous)

import Foundation

struct Game{
    var score: Int {
        willSet{
            // Score is oldValue
            print("The score is now \(score).")
        }
        didSet{
            // Score is newValue
            print("The score changed to \(score).")
        }
    }
}

var newGame = Game(score: 0)
newGame.score += 1
newGame.score += 54
newGame.score -= 24

struct App {
    var contacts = [String]() {
        willSet {
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)")
        }

        didSet {
            print("There are now \(contacts.count) contacts.")
            print("Old value was \(oldValue)")
        }
    }
}

var app = App()
app.contacts.append("Adrian E")
app.contacts.append("Allen W")
app.contacts.append("Ish S")

//: [Next](@next)
