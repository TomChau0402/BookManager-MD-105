//
//  BookManagerApp.swift
//  BookManager
//

//

import SwiftUI

@main
struct BookManagerApp: App {
    let modelContainer: ModelContainer
    
    var body: some Scene { Scene {
        WindowGroup {
            ContentView()
                .modelContainer(modelContainer)
            
        }
        
    }
        
        
        init() {
            do {
                modelContainer = try ModelContainer (modelContainerfor:
                                                        UploadImage.self,
                PersistentBook)
            }
            
        }
    }
}
                
