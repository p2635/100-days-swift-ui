/*
 Lesson 2 - Conditional modifiers
 https://www.hackingwithswift.com/books/ios-swiftui/conditional-modifiers
 Use ternary where possible over if/else. There is a
 handy mnemonic to remember ternary which is WTF.
 What, True, False.
 
 If you used if/else instead of below, then SwiftUI
 will have to create two buttons and performance
 is degraded.
 
 Created by Phil on 11/02/2023.
 */
import SwiftUI

struct ConditionalModifiers: View {
  
  @State private var useBlueText = true
  
  var body: some View {
    Button("Click me!"){
      useBlueText.toggle()
    }
    .foregroundColor(useBlueText ? .red : .blue)
  }
}

struct ConditionalModifiers_Previews: PreviewProvider {
  static var previews: some View {
    ConditionalModifiers()
  }
}
