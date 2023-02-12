//
//  ContentView.swift
//  Guess The Flag
//
//  Created by Phil on 10/02/2023.
//

import SwiftUI

struct ContentView: View {

  @State private var score = 0
  @State private var showingScore = false
  @State private var showingEnd = false
  @State private var scoreTitle = ""
  @State private var countries = [
    "Estonia",
    "France",
    "Germany",
    "Ireland",
    "Italy",
    "Nigeria",
    "Poland",
    "Russia",
    "Spain",
    "UK",
    "US"
  ].shuffled()
  @State private var correctFlag = Int.random(in: 0...2)
  @State private var currentQuestion = 1
  
  private let numberOfFlags = 3
  private let numberOfQuestions = 8
  
  struct FlagImage: View {
    var image: String
    var body: some View {
      Image(image)
        .renderingMode(.original)
        .clipShape(Capsule())
        .shadow(color: .white, radius: 5)
    }
  }
  
  var body: some View {
    
    ZStack {
      
      RadialGradient(stops: [
          .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
          .init(color: Color(red: 0.1, green: 0.2, blue: 0.65), location: 0.3),
      ], center: .top, startRadius: 200, endRadius: 400)
          .ignoresSafeArea()
      
      VStack (spacing: 40) {
        Text("Guess The Flag")
          .font(.largeTitle.weight(.semibold))
          .foregroundColor(.white)
          .padding()
        Text("Tap on the \(countries[correctFlag]) flag.")
          .foregroundColor(.white)
        Text("Question \(currentQuestion) / \(numberOfQuestions).")
          .foregroundColor(.white)
        
        ForEach(0..<numberOfFlags, id: \.self) { number in
          Button {
            flagTapped(number)
          } label: {
            FlagImage(image: countries[number])
          }
        }
        .padding(20)
        
      }
    }
    .alert(scoreTitle, isPresented: $showingScore) {
      Button("Continue") {
        if currentQuestion == numberOfQuestions {
          showingEnd = true
        } else {
          currentQuestion += 1
          shuffleFlags()
        }
      }
    } message: {
      Text("Your score is \(score).")
        .foregroundColor(.primary)
    }
    .alert("End of Game", isPresented: $showingEnd) {
      Button("Reset Game"){
        resetGame()
        shuffleFlags()
      }
    } message: {
      Text("Your final score is \(score) / \(numberOfQuestions).")
        .foregroundColor(.primary)
    }
  }
  
  func flagTapped(_ number: Int) {
    if number == correctFlag {
      scoreTitle = "Correct"
      score += 1
    } else {
      scoreTitle = "Wrong, that's the flag of \(countries[number])."
    }
    showingScore = true
  }
  
  func shuffleFlags() {
    countries.shuffle()
    correctFlag = Int.random(in: 0...2)
  }
  
  func resetGame() {
    currentQuestion = 1
    score = 0
  }
  
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
