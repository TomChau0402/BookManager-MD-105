//
//  BookManagerApp.swift
//  BookManager
//

//

import SwiftUI

@main
struct BookManagerApp: App {
    let modelContainer: ModelContainer
    
    var body: some Scent { Scene {
        WindowGroup {
            ContentView()
                .modelContainer(modelContainer)
            
        }
        
    }
        
        
        init() {
            
            fatalError("failed to load model container")
        }
    }
}
                
