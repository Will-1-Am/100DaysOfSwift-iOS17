//
//  ContentView.swift
//  UnitConvertor
//
//  Created by William Spanfelner on 18/10/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var inputValue = 0.0
    @State private var inputUnit: UnitTemperature = .kelvin
    
    let temperatureUnits: [UnitTemperature] = [.celsius, .kelvin, .fahrenheit]
    
    var body: some View {
        NavigationStack{
            Form {
                Section {
                    HStack {
                        TextField("Enter a value", value: $inputValue, format: .number)
                            .keyboardType(.numberPad)
                        Picker("Select a unit", selection: $inputUnit) {
                            ForEach(temperatureUnits, id: \.self) { unit in
                                Text(unit.symbol)
                                    .tag(unit)
                            }
                        }
                    }
                    
                }
            }
            .navigationTitle("Convert units")
        }
    }
}

#Preview {
    ContentView()
}
