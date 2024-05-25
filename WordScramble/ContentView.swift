//
//  ContentView.swift
//  WordScramble
//
//  Created by Nick Krasnitskiy on 25.05.2024.
//

import SwiftUI

struct ContentView: View {
    let people = ["Finn", "Leia", "Luke", "Rey"]
    
    var body: some View {
        List {
            Text("Static row")
            
            ForEach(people, id: \.self) {
                Text($0)
            }
            
            Text("Static row")
        }
        .listStyle(.grouped)
    }
}

#Preview {
    ContentView()
}
