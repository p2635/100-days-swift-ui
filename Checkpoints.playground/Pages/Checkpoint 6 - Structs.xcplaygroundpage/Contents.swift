//: [Previous](@previous)

import Foundation

//To check your knowledge, here’s a small task for you: create a struct to store information about a car, including its model, number of seats, and current gear, then add a method to change gears up or down. Have a think about variables and access control: what data should be a variable rather than a constant, and what data should be exposed publicly? Should the gear-changing method validate its input somehow?

struct Car {
    
    let model: String
    let numberOfSeats: Int
    let numberOfGears: Int
    private(set) var currentGear: Int
    
    init(model: String, numberOfSeats: Int, numberOfGears: Int){
        self.model = model
        self.numberOfSeats = numberOfSeats
        self.numberOfGears = numberOfGears
        currentGear = 1
    }
    
    mutating func gearUp() -> Bool{
        if (1..<numberOfGears).contains(currentGear) {
            currentGear += 1
            print("Shifting gears up to \(currentGear)")
            return true
        }
        print("Failed to shift up, reached max gear.")
        return false
    }
    
    mutating func gearDown() -> Bool{
        if (2...numberOfGears).contains(currentGear){
            currentGear -= 1
            print("Shifting gears down to \(currentGear)")
            return true
        }
        print("Failed to shift down, already gear 1.")
        return false
    }
}

// Testing
var myCar = Car(model: "Hyundai", numberOfSeats: 5, numberOfGears: 6)
print(myCar.model)
print(myCar.numberOfSeats)
print(myCar.numberOfGears)

myCar.gearUp()
myCar.gearUp()
myCar.gearUp()
myCar.gearUp()
myCar.gearUp()
myCar.gearUp()
print(myCar.currentGear)

myCar.gearDown()
myCar.gearDown()
myCar.gearDown()
myCar.gearDown()
myCar.gearDown()
myCar.gearDown()
print(myCar.currentGear)

//: [Next](@next)
