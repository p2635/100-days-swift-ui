/*
 Lesson 4 - View as properties
 https://www.hackingwithswift.com/books/ios-swiftui/views-as-properties
 
 Created by Phil on 11/02/2023.
 */

import SwiftUI

struct ViewProps: View {
  
  var superman = Text("Hi, I am superman!")
  var batman = Text("Hi, I am batman!")
  var computed: some View {
    Text("I was computed.")
  }
  
  /*
   This will not work because Swift won’t
   automatically apply the @ViewBuilder attribute
   here.
   
   var multiComputed: some View {
     Text("I was computed.")
     Text("I was computed too.")
     Text("I was computed three.")
   }
   
   Three options:
   1. Place them in a V/H/ZStack{}
   2. Place them in a Group{}
   3. Apply the '@ViewBuilder' yourself in front
   of 'var'.
   */
  
  @ViewBuilder var multiComputed: some View {
    Text("I was computed.")
    Text("I was computed too.")
    Text("I was computed three.")
  }
  
  var body: some View {
    VStack {
      superman.font(.title)
      batman.font(.subheadline)
      computed
    }
    VStack {
      multiComputed
    }
  }
}

struct ViewProps_Previews: PreviewProvider {
  static var previews: some View {
    ViewProps()
  }
}
