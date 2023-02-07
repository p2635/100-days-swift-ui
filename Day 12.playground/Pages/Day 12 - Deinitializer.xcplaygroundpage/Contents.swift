//: [Previous](@previous)

import Foundation

/*
 Create a Zombie class that has a simple
 property, init and deinit, then test it
 out.
 */

class Zombie{
    
    let id: Int
    
    init(id: Int) {
        self.id = id
        print("Argh...I am a hungry zombie \(id).")
    }
    
    deinit {
        print("Me, zombie \(id) is gone now, bye.")
    }
}

/*
 Testing
 */
for i in 1...3 {
    let zombie = Zombie(id: i)
    print("Why am I called Zombie \(zombie.id)?")
}

//: [Next](@next)
