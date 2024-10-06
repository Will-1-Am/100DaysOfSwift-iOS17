//
//  ContentView.swift
//  WeSplit
//
//  Created by William Spanfelner on 03/10/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var chequeAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    
    /// The following array will allow people to tip at different rates
    let tipPercentages = [10, 15, 20, 25, 0]
    
    var body: some View {
        Form {
            Section {
                TextField("Enter the amount of the cheque", value: $chequeAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
            }
            Section {///The following text feild simply reflects the value stored in the variable as it is stored.
                Text(chequeAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
            }
        }
    }
}

#Preview {
    ContentView()
}
