//
    // Project: InterviewQuestionsExamples
    //  File: ARC.swift
    //  Created by Noah Carpenter
    //  🐱 Follow me on YouTube! 🎥
    //  https://www.youtube.com/@NoahDoesCoding97
    //  Like and Subscribe for coding tutorials and fun! 💻✨
    //  Fun Fact: Cats have five toes on their front paws, but only four on their back paws! 🐾
    //  Dream Big, Code Bigger
    

import Playgrounds
#Playground {
    class Person {
        var name: String
        weak var pet: Pet?   // weak prevents retain cycle
        
        init(name: String) {
            self.name = name
            print("Person init")
        }
        
        deinit {
            print("Person deinit")
        }
    }
    
    class Pet {
        var name: String
        var owner: Person?  // strong ←→ strong would create a cycle
        
        init(name: String) {
            self.name = name
            print("Pet init")
        }
        
        deinit {
            print("Pet deinit")
        }
    }
    
    // Example of cycle prevention
    do {
        let person = Person(name: "Noah")
        let cat = Pet(name: "Mittens")
        
        person.pet = cat
        cat.owner = person
    } // Both objects deallocate correctly

}
