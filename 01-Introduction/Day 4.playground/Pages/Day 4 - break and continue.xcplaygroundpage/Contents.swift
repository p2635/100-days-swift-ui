//: [Previous](@previous)

import Foundation

var files = ["a.txt", "b.txt", "c.jpg", "d.jpg", "e.docx", "f.txt", "g.txt"]

print("Printing all files")
for file in files {print("* \(file)")}
print()

print("Printing only .txt files")
for file in files {
    if file.hasSuffix(".txt") == false {
        continue
    }
    print("* .txt file found: \(file).")
}
print()

// Print files until swear word is found
var files2 = ["a.txt", "b.txt", "c.jpg", "d.jpg", "e.docx", "penis.txt", "g.txt"]
print("DIRTY WORD SCANNER INITIATED...")
for file in files2 {
    print(file)
    if file.contains("penis"){
        print("SCAN TERMINATED, DIRTY WORD FOUND.")
        break
    }
}

//: [Next](@next)
