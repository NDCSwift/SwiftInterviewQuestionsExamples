//
    // Project: InterviewQuestionsExamples
    //  File: Untitled.swift
    //  Created by Noah Carpenter
    //  🐱 Follow me on YouTube! 🎥
    //  https://www.youtube.com/@NoahDoesCoding97
    //  Like and Subscribe for coding tutorials and fun! 💻✨
    //  Fun Fact: Cats have five toes on their front paws, but only four on their back paws! 🐾
    //  Dream Big, Code Bigger
    

import Playgrounds
#Playground {
    // STRUCT — Value Type
    struct Player {
        var score: Int
    }
    
    var p1 = Player(score: 10)
    var p2 = p1
    p2.score = 20
    
    print(p1.score) // 10
    print(p2.score) // 20
    
    // CLASS — Reference Type
    class Game {
        var level = 1
    }
    
    let g1 = Game()
    let g2 = g1
    g2.level = 5
    
    print(g1.level) // 5
    print(g2.level) // 5

}
