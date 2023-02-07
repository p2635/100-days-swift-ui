//: [Previous](@previous)

import Foundation

/*
 Write a super class of Employee that simply has an hours var
 Write two subclasses that print a simple message with hours var
 One that is called Warrior and another one called Cook.
 */
class Employee {
    var hours: Int
    init(hours: Int){
        self.hours = hours
    }
    
    func printJob() { print("I'm an employee!") }
}

final class Warrior: Employee {
    func work() { print("I slash opponents for \(hours) hours!") }
    override func printJob() { print("I'm a warrior!") }
}

final class Cook: Employee {
    func work() { print("I boil soup for \(hours) hours!") }
    override func printJob() { print("I'm a cook!") }
}

var bob = Warrior(hours: 10)
var john = Cook(hours: 6)
bob.work()
bob.printJob()
john.work()
john.printJob()

//: [Next](@next)
