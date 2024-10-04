//
//  ContentView.swift
//  WeSplit
//
//  Created by William Spanfelner on 03/10/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    
    var body: some View {
        Form {
            ForEach(100..<200) {
                Text("Row \($0)")
            }
        }
    }
}

#Preview {
    ContentView()
}
