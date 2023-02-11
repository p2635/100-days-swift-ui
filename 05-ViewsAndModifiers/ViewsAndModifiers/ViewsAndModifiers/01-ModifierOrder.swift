/*
 Lesson 1 - Modifier order matters
 https://www.hackingwithswift.com/books/ios-swiftui/why-modifier-order-matters
 SwiftUI applies modifiers in the given order that you give it.
 Consider the below code. What would you expect to happen?
 
 Created by Phil on 11/02/2023.
 */

import SwiftUI

struct Modifiers: View {
  
  var body: some View {
    
    Text("Try me.")
      .background(.blue)
      .frame(width: 100, height: 100)
    
    // vs this
    Text("Try me.")
      .frame(width: 100, height: 100)
      .background(.blue)
    
  }
}

struct Modifiers_Previews: PreviewProvider {
  static var previews: some View {
    Modifiers()
  }
}
