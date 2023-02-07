//: [Previous](@previous)

/*
Your challenge is this: make a class hierarchy for animals, starting with Animal at the top, then Dog and Cat as subclasses, then Corgi and Poodle as subclasses of Dog, and Persian and Lion as subclasses of Cat.

But there’s more:

    The Animal class should have a legs integer property that tracks how many legs the animal has.
    The Dog class should have a speak() method that prints a generic dog barking string, but each of the subclasses should print something slightly different.
    The Cat class should have a matching speak() method, again with each subclass printing something different.
    The Cat class should have an isTame Boolean property, provided using an initializer.
*/

import Foundation

class Animal {
    
    var legs: Int // var because sometimes accidents happen.
    
    init(legs: Int){
        self.legs = legs
    }
    
}

class Dog: Animal {
    
    init(){ super.init(legs: 4) }
    
    func speak() {
        print("Woof, woof. I am a Dog with \(legs) legs!")
    }
    
    deinit { print("A Dog just fainted.") }
}

final class Corgi: Dog {
    
    override func speak() {
        print("Woof, woof. I am a Corgi with \(legs) legs!")
    }
}

final class Poodle: Dog {
    
    override func speak() {
        print("Woof, woof. I am a Poodle with \(legs) legs!")
    }
}

for dog in [Dog(), Corgi(), Poodle()]{
    dog.speak()
}

class Cat: Animal {
    var isTame: Bool
    
    init(isTame: Bool){
        self.isTame = isTame
        super.init(legs: 4)
    }
    
    func speak() {
        print("Meowwwww. I am a Cat with \(legs) legs!")
        print("Meowwwww. I am\(isTame ? "" : " not") tamed.")
    }
    
    deinit { print("A Cat just fainted.") }
}

final class Siamese: Cat {
    
    override func speak() {
        print("Meowwwww. I am a Siamese Cat with \(legs) legs!")
        print("Meowwwww. I am\(isTame ? "" : " not") tamed.")
    }
}

final class Persian: Cat {
    
    override func speak() {
        print("Meowwwww. I am a Persian Cat with \(legs) legs!")
        print("Meowwwww. I am\(isTame ? "" : " not") tamed.")
    }
}

var cat = Cat(isTame: true)
cat.speak()

cat = Siamese(isTame: false)
cat.speak()

cat = Persian(isTame: true)
cat.speak()

/*
 For some reason, i only see 'A Cat just fainted' twice.
 Meowwwww. I am a Cat with 4 legs!
 Meowwwww. I am tamed.
 A Cat just fainted.
 Meowwwww. I am a Siamese Cat with 4 legs!
 Meowwwww. I am not tamed.
 Meowwwww. I am a Persian Cat with 4 legs!
 Meowwwww. I am tamed.
 A Cat just fainted.
 */

//: [Next](@next)
