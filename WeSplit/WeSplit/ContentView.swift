//
//  ContentView.swift
//  WeSplit
//
//  Created by Phil on 07/02/2023.
//

import SwiftUI

struct ContentView: View {
  
  let q1 = "How much did you all pay?"
  let q2 = "How much would you like to tip?"
  let q3 = "Each person pays..."
  
  @State private var numberOfPeople: Int = 2
  @State private var billAmount: Double = 30.0
  @State private var tipPercentage: Int = 10
  @FocusState private var billAmountFocus
  
  let tipPercentages = [0, 5, 10, 15, 20]
  
  var payablePerPerson: Double {
    
    // +2 to offset the ForEach loop (see body)
    let headCount = Double(numberOfPeople) + 2
    let tipPercent = Double(tipPercentage)
    let totalTip = billAmount / 100 * tipPercent
    let total = billAmount + totalTip

    return (total / headCount)
  }
  
  var body: some View {
    NavigationView{
      Form {
        Section{
          TextField("Total Payable Amount", value: $billAmount, format:
              .currency(code: Locale.current.currency?.identifier ?? "GBP"))
              .keyboardType(.decimalPad)
              .focused($billAmountFocus)
          Picker("Number of People", selection: $numberOfPeople){
            ForEach(2..<21) {
              Text("\($0) people")
            }
          }
        } header: {
          Text(q1)
        }
        
        Section{
          Picker("Tip Percentage", selection: $tipPercentage) {
            ForEach(tipPercentages, id: \.self){
              Text($0, format: .percent)
            }
          }
        } header: {
          Text(q2)
        }.pickerStyle(.segmented)
        
        Section{
          Text(payablePerPerson, format: .currency(code: Locale.current
            .currency?.identifier ?? "GBP"))
        } header: {
          Text(q3)
        }
      }
      .navigationTitle("WeSplit")
      .toolbar {
        ToolbarItemGroup(placement: .keyboard) {
          Spacer()
          Button("Done"){
            billAmountFocus = false
          }
        }
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
