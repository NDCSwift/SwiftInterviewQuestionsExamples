//
    // Project: InterviewQuestionsExamples
    //  File: Lists.swift
    //  Created by Noah Carpenter
    //  🐱 Follow me on YouTube! 🎥
    //  https://www.youtube.com/@NoahDoesCoding97
    //  Like and Subscribe for coding tutorials and fun! 💻✨
    //  Fun Fact: Cats have five toes on their front paws, but only four on their back paws! 🐾
    //  Dream Big, Code Bigger
    

import SwiftUI

struct Fruit: Identifiable {
    let id = UUID()
    let name: String
}

struct FruitListView: View {
    @State private var fruits = [
        Fruit(name: "Apple"),
        Fruit(name: "Banana"),
        Fruit(name: "Grapes")
    ]
    
    var body: some View {
        List {
            ForEach(fruits) { fruit in
                Text(fruit.name)
            }
            .onDelete { indexSet in
                fruits.remove(atOffsets: indexSet)
            }
        }
    }
}

#Preview {
    FruitListView()
}
