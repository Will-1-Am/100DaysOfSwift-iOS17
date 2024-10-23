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
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
