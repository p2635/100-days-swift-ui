//
//  ContentView.swift
//  TimeConverter
//
//  Created by Phil on 09/02/2023.
//

import SwiftUI

struct ContentView: View {
  
  @State private var inputValue = 60.0
  @FocusState private var inputFocus
  @State private var outputValue = 0.0
  @State private var inputUnit = "Seconds"
  @State private var outputUnit = "Minutes"
  
  private let options = ["Seconds", "Minutes", "Hours", "Days"]
  
  private var getSeconds: Double {
    switch inputUnit {
    case "Seconds":
      return inputValue
    case "Minutes":
      return (inputValue * 60)
    case "Hours":
      return (inputValue * 60 * 60)
    case "Days":
      return (inputValue * 60 * 60 * 24)
    default:
      return 0.0
    }
  }
  
  private var convertedValue: String {
    var converted = getSeconds
    switch outputUnit {
      case "Minutes":
        converted /= 60
      case "Hours":
        converted /= (60 * 60)
      case "Days":
        converted /= (60 * 60 * 24)
      default:
        break
    }
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
              Text($0)
            }
          }
          .pickerStyle(.segmented)
        } header: {
          Text("Enter your value")
        }
        
        Section{
          Picker("Output Unit", selection: $outputUnit) {
            ForEach(options, id: \.self) {
              Text($0)
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
