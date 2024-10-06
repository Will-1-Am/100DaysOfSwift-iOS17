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
        NavigationStack {
            Form {
                Picker("Select your student", selection: $selectedStudent) {
                    ForEach(students, id: \.self) {  /// The id is used to identify each element uniquely
                        Text($0)
                    }
                }
            }
            .navigationTitle("Select a Student")
        }
    }
}

#Preview {
    ContentView()
}
