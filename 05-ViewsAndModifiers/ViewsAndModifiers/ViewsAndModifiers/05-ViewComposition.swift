/*
 Lesson 5 - View Composition
 https://www.hackingwithswift.com/books/ios-swiftui/view-composition
 
 Created by Phil on 12/02/2023.
 */

import SwiftUI

struct CapsuleText: View {
  var text: String
  
  var body: some View {
      Text(text)
          .font(.largeTitle)
          .padding()
          .foregroundColor(.white)
          .background(.blue)
          .clipShape(Capsule())
  }
}

struct ViewComposition: View {
  
  /*
   The text attributes are identical here. To
   comply with the DRY principle, it's worth
   separating this into a custom view. The custom
   view is as a struct above this ViewComposition
   View.
   
   var body: some View {
     VStack(spacing: 10) {
       
       Text("First")
         .font(.largeTitle)
         .padding()
         .foregroundColor(.white)
         .background(.blue)
         .clipShape(Capsule())
       
       Text("Second")
         .font(.largeTitle)
         .padding()
         .foregroundColor(.white)
         .background(.blue)
         .clipShape(Capsule())
     }
   }
   */
  
  var body: some View {
    VStack(spacing: 10) {
      CapsuleText(text: "First")
      CapsuleText(text: "Second")
        .padding()
        .background(.green)
    }
  }
}

struct ViewComposition_Previews: PreviewProvider {
  static var previews: some View {
    ViewComposition()
  }
}
