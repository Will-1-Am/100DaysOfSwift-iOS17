//
//  ContentView.swift
//  WeSplit
//
//  Created by William Spanfelner on 03/10/2024.
//

import SwiftUI

struct ContentView: View {
    let students = ["Harry", "Hermione", "Ron", "Draco"]
    @State private var selectedStudent = "Harry"
    
    var body: some View {
        Text("Hello, World!")
    }
}

#Preview {
    ContentView()
}
