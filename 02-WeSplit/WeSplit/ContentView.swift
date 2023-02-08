//
//  ContentView.swift
//  WeSplit
//
//  Created by Phil on 07/02/2023.
//

import SwiftUI

struct ContentView: View {
    
  @State private var numberOfPeople: Int = 2
  @State private var billAmount: Double = 30.0
  @State private var tipPercentage: Int = 10
  
  @FocusState private var billAmountFocus
  @FocusState private var tipAmountFocus
  
  let tipPercentages = [0, 5, 10, 15, 20]
  let currency = Locale.current.currency?.identifier ?? "GBP"
  
  var totalTip: Double {
    let tipPercent = Double(tipPercentage)
    let totalTip = billAmount / 100 * tipPercent
    return totalTip
  }
  
  var payablePerPerson: Double {
    // +2 to offset the ForEach loop (see body)
    let headCount = Double(numberOfPeople) + 2
    let totalWithTip = billAmount + totalTip
    return (totalWithTip / headCount)
  }
  
  var body: some View {
    NavigationView{
      Form {
        Section{
          TextField("Total Payable Amount", value: $billAmount, format:
              .currency(code: currency))
          .keyboardType(.decimalPad)
          .focused($billAmountFocus)
          Picker("Number of People", selection: $numberOfPeople){
            ForEach(2..<21) {
              Text("\($0) people")
            }
          }
        } header: {
          Text("How much did you all pay?")
        }
        
        // ForEach challenge
        Section{
          Picker("Tip Percentage", selection: $tipPercentage){
            ForEach(0..<101){
              Text($0, format: .percent)
            }
          }
        } header: {
          Text("How much would you like to tip?")
        }
        
        //        Section{
        //          Picker("Tip Percentage", selection: $tipPercentage) {
        //            ForEach(tipPercentages, id: \.self){
        //              Text($0, format: .percent)
        //            }
        //          }
        //          .pickerStyle(.segmented)
        //        } header: {
        //          Text("How much would you like to tip?")
        //        }
        
        // TextField Implementation
        //        Section{
        //          TextField("Tip Percentage", value:$tipPercentage, format:.percent)
        //              .keyboardType(.numberPad)
        //              .focused($tipAmountFocus)
        //        } header: {
        //          Text("How much would you like to tip?")
        //        }
        
        Section{
          Text(totalTip, format: .currency(code: Locale.current
            .currency?.identifier ?? "GBP"))
        } header: {
          Text("The total tip amount")
        }
        
        Section{
          Text(payablePerPerson, format: .currency(code: currency))
        } header: {
          Text("Each person pays")
        }
        
      }
      .navigationTitle("WeSplit")
      .toolbar {
        ToolbarItemGroup(placement: .keyboard) {
          Spacer()
          Button("Done"){
            billAmountFocus = false
            // tipAmountFocus = false
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
