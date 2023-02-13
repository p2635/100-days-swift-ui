//: [Previous](@previous)

/*:
 [100 Days of SwiftUI](https://www.hackingwithswift.com/100/swiftui/)
 
 Day 3 - enums (Enumerated type)
*/
import Foundation

// Declare an enum with strings and ints
// Paul Hudson (the auhtor of the site) seems to start enum with a capital letter.
enum uglyYoubi {
    case getsu
    case ka
    case sui
    case moku
    case kin
    case doo // can't use 'do' which is a special keyword
    case nichi
}

// Actually, let's make it prettier
enum Youbi {
    case getsu, ka, sui, moku, kin, doo, nichi
}

// This doesn't work, maybe Ints are not supported? To explore later.
//enum Kazoeru {
//    case 1, 2, 3, 4, 5
//}

// Declare and change values - Strings
var today = Youbi.getsu
print(today)
today = .kin
print(today)

// this doesn't work - today = .outOfScope

//: [Next](@next)
