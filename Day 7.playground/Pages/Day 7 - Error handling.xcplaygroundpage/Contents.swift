//: [Previous](@previous)

import Foundation

/*
 3 steps to handle errors:
 1. List the errors
 2. Write a function to check the errors
 3. Use the function, try/catch the errors
 */

let minPassLength = 5
let weakPasswords = ["letmein", "password"]

enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    
    // Error checks
    if password.count < minPassLength {
        throw PasswordError.short
    } else if weakPasswords.contains(password) {
        throw PasswordError.obvious
    }
    
    // Check the password
    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Great"
    } else {
        return "Excellent"
    }
}

// Test data
let passwords = [
    "abc",
    "letmein",
    "pass123",
    "pass1234",
    "password",
    "password123456"
]

// This is what unit testing is for! I haven't learned how to do it yet.
for i in 0..<passwords.count {
    
    var currentPassword = passwords[i]
    
    print("Checking password: \"\(currentPassword)\".")

    do {
        var result = try checkPassword(currentPassword)
        print("Your password rating is \(result).")
    } catch PasswordError.short {
        print("Your password is \(currentPassword.count) characters.")
        print("Error: Your password must be at least \(minPassLength) characters.")
    } catch PasswordError.obvious {
        print("Error: Your password is in the weak password list.")
    } catch {
        print("Unknown generic error.")
    }
    
    print()
}


//: [Next](@next)
