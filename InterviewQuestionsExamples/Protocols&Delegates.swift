//
    // Project: InterviewQuestionsExamples
    //  File: Protocols&Delegates.swift
    //  Created by Noah Carpenter
    //  🐱 Follow me on YouTube! 🎥
    //  https://www.youtube.com/@NoahDoesCoding97
    //  Like and Subscribe for coding tutorials and fun! 💻✨
    //  Fun Fact: Cats have five toes on their front paws, but only four on their back paws! 🐾
    //  Dream Big, Code Bigger
    
import Playgrounds
#Playground {
    // PROTOCOL
    protocol DownloadDelegate: AnyObject {
        func didFinishDownloading(_ file: String)
    }
    
    // DELEGATOR
    class Downloader {
        weak var delegate: DownloadDelegate?
        
        func start() {
            // Fake async download
            delegate?.didFinishDownloading("video.mp4")
        }
    }
    
    // DELEGATE IMPLEMENTATION
    class ViewController: DownloadDelegate {
        func didFinishDownloading(_ file: String) {
            print("Download finished:", file)
        }
    }
    
    let controller = ViewController()
    let downloader = Downloader()
    downloader.delegate = controller
    downloader.start()

}
