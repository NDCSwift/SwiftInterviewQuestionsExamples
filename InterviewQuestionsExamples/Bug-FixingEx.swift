//
    // Project: InterviewQuestionsExamples
    //  File: Bug-FixingEx.swift
    //  Created by Noah Carpenter
    //  🐱 Follow me on YouTube! 🎥
    //  https://www.youtube.com/@NoahDoesCoding97
    //  Like and Subscribe for coding tutorials and fun! 💻✨
    //  Fun Fact: Cats have five toes on their front paws, but only four on their back paws! 🐾
    //  Dream Big, Code Bigger
    

import SwiftUI

// BUG: List not updating (common interview example)

struct TodoItem: Identifiable {
    let id = UUID()
    let title: String
}

struct BuggyTodoView: View {
    // WRONG: This won't trigger UI updates
    var items: [TodoItem] = []
    
    var body: some View {
        List(items) { item in
            Text(item.title)
        }
        // Adding items does not refresh this UI
    }
}

// FIX: Use @State (or @StateObject with a ViewModel)
struct FixedTodoView: View {
    @State private var items: [TodoItem] = []
    
    var body: some View {
        VStack {
            List(items) { item in
                Text(item.title)
            }
            
            Button("Add Item") {
                items.append(TodoItem(title: "New Task"))
            }
        }
    }
}

#Preview{
    FixedTodoView()
}
