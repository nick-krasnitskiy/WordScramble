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
    
    func testStrings() {
        let input = "a b c"
        let letters = input.components(separatedBy: " ")
        
        let input2 = """
                    a
                    b
                    c
                    """
        let letters2 = input2.components(separatedBy: "\n")
        
        let letter = letters.randomElement()
        let trimmed = letter?.trimmingCharacters(in: .whitespacesAndNewlines)
        
        
        let word = "swift"
        let checker = UITextChecker()
        
        let range = NSRange(location: 0, length: word.utf16.count)
        let missspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
        
        let allGood = missspelledRange.location == NSNotFound
    }
}

#Preview {
    ContentView()
}
