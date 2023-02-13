//: [Previous](@previous)

import Foundation

var characterName: String?

let checkCharacter1 = {
    if let characterName = characterName {
        print("You have a character name.")
    } else {
        print("You don't have a character name.")
    }
}

let checkCharacter2 = {
    guard let characterName = characterName else {
        print("You don't have a character name!")
        return
    }
    print("You have a character name.")
}


//: [Next](@next)
