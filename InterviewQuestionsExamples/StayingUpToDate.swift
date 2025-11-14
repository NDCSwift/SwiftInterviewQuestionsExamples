//
    // Project: InterviewQuestionsExamples
    //  File: StayingUpToDate.swift
    //  Created by Noah Carpenter
    //  🐱 Follow me on YouTube! 🎥
    //  https://www.youtube.com/@NoahDoesCoding97
    //  Like and Subscribe for coding tutorials and fun! 💻✨
    //  Fun Fact: Cats have five toes on their front paws, but only four on their back paws! 🐾
    //  Dream Big, Code Bigger
    

import Playgrounds
#Playground {
    // Fun snippet to show on screen
    // A "playground" of habits for staying current
    
    struct LearningRoutine {
        var dailyHabits = [
            "Watch one WWDC session",
            "Read Apple Developer Documentation",
            "Try a new Swift feature in a playground",
            "Follow 2 iOS engineers on Twitter/X",
            "Build one tiny SwiftUI demo"
        ]
        
        func printRoutine() {
            dailyHabits.forEach { print("- \($0)") }
        }
    }
    
    let routine = LearningRoutine()
    routine.printRoutine()

}
