//
    // Project: InterviewQuestionsExamples
    //  File: Optionals.swift
    //  Created by Noah Carpenter
    //  🐱 Follow me on YouTube! 🎥
    //  https://www.youtube.com/@NoahDoesCoding97
    //  Like and Subscribe for coding tutorials and fun! 💻✨
    //  Fun Fact: Cats have five toes on their front paws, but only four on their back paws! 🐾
    //  Dream Big, Code Bigger
    
// OPTION 1 — Optional Binding (if let)
import Playgrounds
#Playground {
    
    
    let numberString: String? = "42"
    
    if let value = numberString {
        print("Value is:", value)
    } else {
        print("Value is nil")
    }
    
    // OPTION 2 — Guard Let
    func process(_ text: String?) {
        guard let text else {
            print("No text provided")
            return
        }
        print("Processing:", text)
    }
    
    // OPTION 3 — Nil Coalescing
    let result = numberString ?? "No value"
    print(result)
    
    // OPTION 4 — Optional Chaining
    struct User {
        var profile: Profile?
    }
    
    struct Profile {
        var nickname: String
    }
    
    let user = User(profile: Profile(nickname: "Noah"))
    print(user.profile?.nickname)
    
}
