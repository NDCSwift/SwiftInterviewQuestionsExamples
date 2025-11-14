//
    // Project: InterviewQuestionsExamples
    //  File: Closures.swift
    //  Created by Noah Carpenter
    //  🐱 Follow me on YouTube! 🎥
    //  https://www.youtube.com/@NoahDoesCoding97
    //  Like and Subscribe for coding tutorials and fun! 💻✨
    //  Fun Fact: Cats have five toes on their front paws, but only four on their back paws! 🐾
    //  Dream Big, Code Bigger
    
import Playgrounds
#Playground {
    // BASIC CLOSURE
    let greeting = { (name: String) in
        print("Hello, \(name)!")
    }
    greeting("Noah")
    
    // TRAILING CLOSURE SYNTAX
    func repeatTask(times: Int, action: () -> Void) {
        for _ in 0..<times { action() }
    }
    
    repeatTask(times: 3) {
        print("SwiftUI is awesome!")
    }
    
    // CAPTURING VALUES
    func makeCounter() -> () -> Int {
        var count = 0
        return {
            count += 1
            return count
        }
    }
    
    let counter = makeCounter()
    print(counter()) // 1
    print(counter()) // 2

}
