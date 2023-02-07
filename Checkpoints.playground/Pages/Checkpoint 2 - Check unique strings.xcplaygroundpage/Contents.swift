//: [Previous](@previous)

// Create an array of strings, then
//  Print the number of items in the array
//  Print the number of unique items in the array.
let fruits = [
    "apple",
    "apple",
    "banana",
    "grapes",
    "grapes",
    "pineapple",
    "orange",
    "melon",
    "tomato",
    "blueberry",
    "raspberry",
    "raspberry"
]
let fruitCount = fruits.count
let fruitCountUnique = Set(fruits).count

print(fruitCount) // Should be 12
print(fruitCountUnique) // Should be 9

//: [Next](@next)
