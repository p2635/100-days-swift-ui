//: [Previous](@previous)

import Foundation

// BAD - Return an array of strings
func getFaveFruits() -> [String] {
    ["Grapes", "Watermelon", "Apples", "Banana", "Lychee"]
}
// What if you forget the position of apples?

// BAD - Return an dict of strings
func getNames() -> [String:String] {
    ["firstName": "John", "lastName": "Wick"]
}
// You still need to specify a default value in case values are nil.

// GOOD - Introducing tuples (fixed-size, various data types)
func getAlien() -> (name: String, harmful: Bool, originPlanet: String) {
    ("Abe", false, "Oddworld")
    // same as (name: "Abe", harmful: false, originPlanet: "Oddworld")
}
var alien = getAlien()
print("""
GETTING ALIEN PROFILE...
* NAME: \(alien.name)
* ORIGIN PLANET: \(alien.originPlanet)
* HARMFUL TO HUMANS: \(alien.harmful)
"""
)

// Indices
func getGame() -> (String, String) {
    ("No Man's Sky", "Sci-Fi")
}

let game = getGame()
print("Name: \(game.0), Genre: \(game.1)")

//: [Next](@next)
