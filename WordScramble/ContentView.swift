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
    
    func testStrings() {
        let input = "a b c"
        let letters = input.components(separatedBy: " ")
        
        let inputTwo =  """
                        a
                        b
                        c
                        """
        let lettersTwo = inputTwo.components(separatedBy: "\n")
        
        let letter = letters.randomElement()
        let trimmed = letter?.trimmingCharacters(in: .whitespacesAndNewlines)
        
        let word = "swift"
        let checker = UITextChecker()
        
        let range = NSRange(location: 0, length: word.utf16.count)
        let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
        let allGood = misspelledRange.location == NSNotFound
    }
}

#Preview {
    ContentView()
}
