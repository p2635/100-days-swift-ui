/*
 Lesson 6 - Custom Modifiers
 https://www.hackingwithswift.com/books/ios-swiftui/custom-modifiers
 
 Created by Phil on 12/02/2023.
 */

import SwiftUI

// To use this, I have to do '.modifier(PhilTitle())'
struct PhilTitle: ViewModifier {
  func body(content: Content) -> some View {
    content
      .font(.largeTitle)
      .foregroundColor(.white)
      .padding()
      .background(.blue)
      .clipShape(RoundedRectangle(cornerRadius: 10))
  }
}

struct Watermark: ViewModifier {
  var text: String
  
  func body(content: Content) -> some View {
    ZStack(alignment: .bottomTrailing) {
      content
      Text(text)
        .font(.caption)
        .foregroundColor(.white)
        .padding(5)
        .background(.black)
    }
  }
}

extension View {
  
  // To enable me to do '.titleStyle()' directly
  func titleStyle() -> some View {
    modifier(PhilTitle())
  }
  
  func watermarked(with text: String) -> some View {
    modifier(Watermark(text: text))
  }
}

struct CustomModifiers: View {
  var body: some View {
    Text("This is a bunch of test text.")
      .titleStyle()
      .watermarked(with: "This is Phil's work.")
  }
}

struct CustomModifiers_Previews: PreviewProvider {
  static var previews: some View {
    CustomModifiers()
  }
}
