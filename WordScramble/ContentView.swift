//
//  ContentView.swift
//  WordScramble
//
//  Created by Nick Krasnitskiy on 25.05.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      Text("Hello world!")
    }
    
    func testBundles() {
        if let fileURL = Bundle.main.url(forResource: "some-file", withExtension: "txt") {
            // we foubd the file in our bundle!
            
            if let fileContents = try? String(contentsOf: fileURL) {
                // we loaded the file into a string!
            }
        }
    }
}

#Preview {
    ContentView()
}
