//
//  ContentView.swift
//  RockPaperScissors
//
//  Created by Phil on 13/02/2023.
//

import SwiftUI

struct ContentView: View {
  
  private let title = "Rock Paper Scissors Game"
  private let desc = """
  In this version of the Rock Paper Scissors game,
  the aim is to select the choice depending on
  if I tell you to win or lose.
  """
  
  private let maxRounds = 10
  @State private var currentRound = 0
  
  private let signs = ["Rock", "Paper", "Scissors"]
  private let randomSign = Int.random(in: 0 ..< 3)
  @State private var computerSign = "Rock"
  @State private var playerSign = "Rock"
  
  @State private var shouldWin = true
  @State private var didWin = false
  @State private var playerScore = 0
  
  private func newRound(){
    currentRound += 1
    computerSign = signs.randomElement() ?? "Error"
    shouldWin.toggle()
    if currentRound == maxRounds{
      resetGame()
    }
  }
  
  private func resetGame(){
    currentRound = 0
    playerScore = 0
  }
  
  /*
   Player only wins if they actually win at
   Rock, paper, scissors. Otherwise, if they
   lose or draw then it still counts as lose.
   */
  func checkPlayerWin() -> Bool {
    if (playerSign == "Rock" && computerSign == "Scissors") ||
        (playerSign == "Paper" && computerSign == "Rock") ||
        (playerSign == "Scissors" && computerSign == "Paper") {
      return true
    }
    return false
  }
  
  /*
   Score points relative to whether the player
   needs to win.
   */
  func scorePoints() {
    playerScore += (checkPlayerWin() == shouldWin) ? 1 : 0
  }
  
  var body: some View {
    
    VStack(alignment: .leading, spacing: 10) {
      
      Text(title)
        .font(.largeTitle)
      Text(desc)
        .font(.subheadline)
      
      VStack(alignment: .leading, spacing: 10){
        HStack{
          Text("Round \(currentRound + 1) of \(maxRounds)")
          Spacer()
          Text("Your score: \(playerScore)")
        }
        
        Text("The opponent chooses \(computerSign).")
        Text("Goal: You should \(shouldWin ? "win" : "lose (or draw)").")
      }
      .padding()
      .border(.red)
      
      ForEach(0 ..< 3, id: \.self){ number in
        Button{
          playerSign = signs[number]
          didWin = checkPlayerWin() == shouldWin
          scorePoints()
          newRound()
        } label: {
          Text(signs[number]).textCase(.uppercase)
            .font(.headline)
            .frame(maxWidth: .infinity, maxHeight: 50)
            .border(.blue)
          
        }
      }
      
      // Doesn't make sense on first load, the player
      // hasn't chosen anything at that point.
      Text("You chose \(playerSign).")
      Text(didWin ? "You did it!!!" : "You picked the wrong one.")
      
      Spacer()
    }
    .padding()
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
