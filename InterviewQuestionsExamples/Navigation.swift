//
    // Project: InterviewQuestionsExamples
    //  File: Navigation.swift
    //  Created by Noah Carpenter
    //  🐱 Follow me on YouTube! 🎥
    //  https://www.youtube.com/@NoahDoesCoding97
    //  Like and Subscribe for coding tutorials and fun! 💻✨
    //  Fun Fact: Cats have five toes on their front paws, but only four on their back paws! 🐾
    //  Dream Big, Code Bigger
    

import SwiftUI
import Playgrounds

    struct MainView: View {
        var body: some View {
            NavigationStack {
                List(0..<5) { i in
                    NavigationLink("Item \(i)") {
                        DetailView(index: i)
                    }
                }
                .navigationTitle("Items")
            }
        }
    }
    
    struct DetailView: View {
        let index: Int
        var body: some View {
            Text("Detail for item \(index)")
                .navigationTitle("Detail")
        }
    }
    
    // Modal Navigation
    struct ModalExample: View {
        @State private var showSheet = false
        
        var body: some View {
            Button("Show Sheet") {
                showSheet = true
            }
            .sheet(isPresented: $showSheet) {
                Text("This is a sheet")
            }
        }
    }

#Preview{
    MainView()
}
