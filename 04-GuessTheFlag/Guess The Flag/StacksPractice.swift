//
//  StacksPractice.swift
//  Guess The Flag
//
//  Created by Phil on 10/02/2023.
//

import SwiftUI

struct StacksPractice: View {
    var body: some View {
      VStack {
        Text("This is a bunch of test text.")
        Text("This is a bunch of test text 2.")
        Text("This is a bunch of test text 3.")
      }
      
      // Separate view
      VStack(spacing: 20) {
        Text("This is a bunch of test text.")
        Text("This is a bunch of test text 2.")
        Text("This is a bunch of test text 3.")
      }
      
      // Leading means left aligned
      VStack(alignment: .leading) {
          Text("Hello, world!")
          Text("This is inside a stack")
      }
      
      HStack(spacing: 20) {
          Text("Hello, world!")
          Text("This is inside a stack")
      }
      
      ZStack {
          Text("Hello, world!")
          Text("This is inside a stack")
      }
    }
}

struct StacksPractice_Previews: PreviewProvider {
    static var previews: some View {
        StacksPractice()
    }
}
