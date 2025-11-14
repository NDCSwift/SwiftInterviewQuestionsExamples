//
    // Project: InterviewQuestionsExamples
    //  File: SwiftUIState.swift
    //  Created by Noah Carpenter
    //  🐱 Follow me on YouTube! 🎥
    //  https://www.youtube.com/@NoahDoesCoding97
    //  Like and Subscribe for coding tutorials and fun! 💻✨
    //  Fun Fact: Cats have five toes on their front paws, but only four on their back paws! 🐾
    //  Dream Big, Code Bigger
    

import SwiftUI
import Playgrounds
import Combine

#Playground {
    // @State — Local view state
    struct ToggleView: View {
        @State private var isOn = false
        
        var body: some View {
            Toggle("Enable Feature", isOn: $isOn)
        }
    }
    
    // @StateObject — Owner of model
    class CounterModel: ObservableObject {
        @Published var value = 0
    }
    
    struct CounterScreen: View {
        @StateObject private var model = CounterModel()
        
        var body: some View {
            Button("Tap: \(model.value)") {
                model.value += 1
            }
        }
    }
    
    // @ObservedObject — Observing external model
    struct ChildView: View {
        @ObservedObject var model: CounterModel
        
        var body: some View {
            Text("Value: \(model.value)")
        }
    }
    
    // @EnvironmentObject — Global shared state
    class AppSettings: ObservableObject {
        @Published var theme = "Light"
    }
    
    struct ProfileView: View {
        @EnvironmentObject var settings: AppSettings
        
        var body: some View {
            Text("Theme: \(settings.theme)")
        }
    }

}
