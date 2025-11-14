//
    // Project: InterviewQuestionsExamples
    //  File: Untitled.swift
    //  Created by Noah Carpenter
    //  🐱 Follow me on YouTube! 🎥
    //  https://www.youtube.com/@NoahDoesCoding97
    //  Like and Subscribe for coding tutorials and fun! 💻✨
    //  Fun Fact: Cats have five toes on their front paws, but only four on their back paws! 🐾
    //  Dream Big, Code Bigger
    

import SwiftUI
struct PrimaryButton: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.headline)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(12)
        }
    }
}

struct ExampleScreen: View {
    var body: some View {
        VStack {
            PrimaryButton(title: "Save") {
                print("Saved!")
            }
            PrimaryButton(title: "Delete") {
                print("Deleted!")
            }
        }
        .padding()
    }
}

#Preview{
    ExampleScreen()
}
