//
//  ContentView.swift
//  WordScramble
//
//  Created by Nick Krasnitskiy on 30.01.2024.
//

import SwiftUI

struct ContentView: View {
    let people = ["Finn", "Leia", "Luke", "Rey"]
    
    var body: some View {
        List {
            Text("Static Row")
            
            ForEach(people,  id: \.self) {
                Text($0)
            }
            
            Text("Static Row")
        }
        .listStyle(.grouped)
    }
    
    func testBundles() {
        if let fileURL = Bundle.main.url(forResource: "somefile", withExtension: "txt") {
            // we found a file in our bundle
            if let fileContent = try? String(contentsOf: fileURL) {
                // we loaded the file into a string
            }
        }
    }
}

#Preview {
    ContentView()
}
