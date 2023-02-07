//: [Previous](@previous)

/*
 Your challenge is this: make a protocol that describes a building, adding various properties and methods, then create two structs, House and Office, that conform to it. Your protocol should require the following:

     A property storing how many rooms it has.
     A property storing the cost as an integer (e.g. 500,000 for a building costing $500,000.)
     A property storing the name of the estate agent responsible for selling the building.
     A method for printing the sales summary of the building, describing what it is along with its other properties.
 */

import Foundation

protocol Building {
    var rooms: Int { get set }
    var cost: Int { get set }
    var agentName: String { get set }
    func printSalesSummary()
}

struct House: Building {
   
    var rooms: Int
    var cost: Int
    var agentName: String
    
    func printSalesSummary(){
        print("""
        This is a House:
        * It has \(rooms) rooms.
        * It costs $\(cost).
        * The estate agent is \(agentName).\n
        """
        )
    }
}

struct Office: Building {
   
    var rooms: Int
    var cost: Int
    var agentName: String
    
    func printSalesSummary(){
        print("""
        This is an Office:
        * It has \(rooms) rooms.
        * It costs $\(cost).
        * The estate agent is \(agentName).\n
        """
        )
    }
}

var house = House(rooms: 4, cost: 500_0000, agentName: "Phil")
var office = Office(rooms: 10, cost: 1_000_000, agentName: "John")

house.printSalesSummary()
office.printSalesSummary()

print("Extending the rooms for both buildings by 1 room.")
house.rooms += 1
office.rooms += 1
house.printSalesSummary()
office.printSalesSummary()

//: [Next](@next)
