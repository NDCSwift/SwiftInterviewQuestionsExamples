//
    // Project: InterviewQuestionsExamples
    //  File: SwiftUIvsUIKit.swift
    //  Created by Noah Carpenter
    //  🐱 Follow me on YouTube! 🎥
    //  https://www.youtube.com/@NoahDoesCoding97
    //  Like and Subscribe for coding tutorials and fun! 💻✨
    //  Fun Fact: Cats have five toes on their front paws, but only four on their back paws! 🐾
    //  Dream Big, Code Bigger
    
import SwiftUI
import UIKit
import Playgrounds
#Playground {
    // SWIFTUI — Declarative
    struct HomeView: View {
        @State private var counter = 0
        
        var body: some View {
            VStack {
                Text("Count: \(counter)")
                Button("Increment") {
                    counter += 1
                }
            }
            .padding()
        }
    }
    
    // UIKit example for comparison
    class HomeViewController: UIViewController {
        var label = UILabel()
        var counter = 0
        
        override func viewDidLoad() {
            super.viewDidLoad()
            label.text = "Count: 0"
            view.addSubview(label)
        }
        
        @objc func increment() {
            counter += 1
            label.text = "Count: \(counter)"
        }
    }

}
