//
//  ContentView.swift
//  TimeConverter App
//
//  Created by Phil on 09/02/2023.
//

import SwiftUI

struct ContentView: View {
  
  @State private var inputValue = 60.0
  @FocusState private var inputFocus
  @State private var outputValue = 0.0
  @State private var inputUnit: TimeUnit = .seconds
  @State private var outputUnit: TimeUnit = .minutes
  
  private enum TimeUnit: String, CaseIterable{
    case seconds, minutes, hours, days
    
    var displayName: String {
      rawValue.capitalized
    }
    
    // Convert to a base unit (seconds)
    var secondsMultiplier: Double {
      switch self{
      case .seconds: return 1
      case .minutes: return 60
      case .hours: return 60 * 2
      case .days: return 60 * 60 * 24
      }
    }
  }
  
  private let options = TimeUnit.allCases
  
  private var convertedValue: String {
    let converted = (inputValue * inputUnit.secondsMultiplier) /  outputUnit.secondsMultiplier
    
    return converted.formatted()
  }
  
  var body: some View {
    
    NavigationView {
      Form {
        Section{
          TextField("Input Time Value", value: $inputValue, format: .number)
              .keyboardType(.decimalPad)
              .focused($inputFocus)
          Picker("Source Unit", selection: $inputUnit) {
            ForEach(options, id: \.self) {
              Text($0.displayName)
            }
          }
          .pickerStyle(.segmented)
        } header: {
          Text("Enter your value")
        }
        
        
        Section{
          Picker("Output Unit", selection: $outputUnit) {
            ForEach(options, id: \.self) {
              Text($0.displayName)
            }
          }
          .pickerStyle(.segmented)

        } header: {
          Text("Choose a unit")
        }
        
        
        Section{
          Text(convertedValue)
        } header: {
          Text("This converts to")
        }
    
      }
      .navigationTitle("Time Converter")
      .toolbar {
        ToolbarItemGroup(placement: .keyboard) {
          Spacer()
          Button("Done"){
            inputFocus = false
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
