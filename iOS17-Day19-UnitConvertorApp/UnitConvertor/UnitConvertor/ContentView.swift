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
        Section {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            TextField("Enter a value", value: $inputValue, format: .number)
                .keyboardType(.numberPad)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
