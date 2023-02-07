//: [Previous](@previous)

import Foundation

let speciesChinese = [
    "Human": "Renlei",
    "Alien": "Waixingren",
    "Dog": "Gou"
]

var new = speciesChinese["Twi'lek"] ?? "Unknown species"
print(new)

let speciesJapanese = [
    "Human": "Ningen",
    "Alien": "Uchuujin",
    "Dog": "Inu",
]

new = speciesJapanese["Twi'lek", default: "Michi"]
print(new)

//: [Next](@next)
