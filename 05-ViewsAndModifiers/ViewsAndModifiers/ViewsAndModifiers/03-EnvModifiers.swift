/*
 Lesson 3 - Environment Modifiers
 https://www.hackingwithswift.com/books/ios-swiftui/environment-modifiers
 
 - Environment modifiers can apply to containers.
 - These apply to many views simultaneously.
 - How do I know if X modifier is an env mod? Check the docs.
 
 Created by Phil on 11/02/2023.
 */

import SwiftUI

struct EnvModifiers: View {
  var body: some View {
    
    // View 1 - all Text views in VStack are affected.
    VStack {
      Text("Apple")
      Text("Banana")
      Text("Grapes")
      Text("Raspberry")
      Text("Sausages")
    }
    .foregroundColor(.brown)
    
    // View 2 - But child modifiers take priority.
    VStack {
      Text("Apple").foregroundColor(.red)
      Text("Banana").foregroundColor(.yellow)
      Text("Grapes").foregroundColor(.purple)
      Text("Raspberry")
      Text("Sausages")
    }
    .foregroundColor(.brown)
    
    // View 3 - But not all mods are environment modifiers.
    VStack {
      Text("Apple")
        .foregroundColor(.red)
        .blur(radius: 0) // Still blurred
      Text("Banana")
        .foregroundColor(.yellow)
        .blur(radius: 10) // This is even more blurry (5 + 10 = 15)
      Text("Grapes").foregroundColor(.purple)
      Text("Raspberry")
      Text("Sausages")
    }
    .foregroundColor(.brown)
    .blur(radius: 5)
  }
}

struct EnvModifiers_Previews: PreviewProvider {
  static var previews: some View {
    EnvModifiers()
  }
}
