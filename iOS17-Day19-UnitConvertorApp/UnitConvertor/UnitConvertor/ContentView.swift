//
//  ContentView.swift
//  UnitConvertor
//
//  Created by William Spanfelner on 18/10/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var inputValue = 0.0
    
    var body: some View {
        NavigationStack{
            Form {
                Section {
                    TextField("Enter a value", value: $inputValue, format: .number)
                        .keyboardType(.numberPad)
                }
            }
            .navigationTitle("Convert units")
        }
    }
}

#Preview {
    ContentView()
}
