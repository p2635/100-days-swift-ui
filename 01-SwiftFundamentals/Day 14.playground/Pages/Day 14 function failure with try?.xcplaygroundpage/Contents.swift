//: [Previous](@previous)

import Foundation

/*
 1. Write an enum with errors for network
 errors, bad id and network failed.
 2. Write a function that gets a user id
 and throws one of those errors.
 3. Use the function and handle the error
 with try? to return an optional string.
 */
enum RequestError: Error {
  case badId, connectionFailed
}

func getUserID(_ userId: Int) throws -> Int {
  throw RequestError.badId
}

if let userId = try? getUserID(10) {
  print(userId)
}

// Do it again but this time use nil coalescing.
let userId = (try? getUserID(10)) ?? 1337
print(userId)

//: [Next](@next)
