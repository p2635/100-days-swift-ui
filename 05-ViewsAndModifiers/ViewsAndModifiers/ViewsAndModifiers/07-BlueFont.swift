//
//  07-BlueFont.swift
//  https://www.hackingwithswift.com/books/ios-swiftui/views-and-modifiers-wrap-up
//  ViewsAndModifiers
//  Create a custom ViewModifier (and accompanying View extension) that makes a view have a large, blue font suitable for prominent titles in a view.
//  Created by Phil on 12/02/2023.
//

import SwiftUI

struct LargeBlueFont: ViewModifier {
  func body(content: Content) -> some View {
    content
      .font(.largeTitle)
      .foregroundColor(.blue)
  }
}

extension View {
  func largeBlueFont() -> some View {
    modifier(LargeBlueFont())
  }
}

struct BlueFont: View {
    var body: some View {
        Text("Hello, this is a blue title.")
          .largeBlueFont()
    }
}

struct BlueFont_Previews: PreviewProvider {
    static var previews: some View {
        BlueFont()
    }
}
