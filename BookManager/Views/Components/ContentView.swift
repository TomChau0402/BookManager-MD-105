//
//  ContentView.swift
//  BookManager
// imperative vs Declarative Swift UI

//deprecated

import SwiftUI

struct ContentView: View {
    @State var books = getBooks()
    @AppStorage(SETTING_THEME_KEY) var them: Theme = .light
    @AppStorage(SETTING_ACCENT_COLOR_KEY) private var
accentTintColor: Color =
    SETTING_ACCENT_COLOR_DEFAULT_VALUE
    
    var colorScheme: ColorScheme? {
        switch(theme) {
        case .light:
            return .light
        case .dark:
            return .dark
        case .system:
            return nil
        }
    }
    var body: some View {
        NavigationView {
            TabView {
                BookListItemView(books: $books)
                    .tabItem {
                        Label("Books", systemImage: "book")
                    }
                
                FavoritesView(books: $books)
                    .tabItem {
                        Label("Favorites", systemImage: "heart.fill")
                    }
            }
            .navigationTitle("My Favorite Books") // Title for the entire app
        }
    }
}

#Preview {
    ContentView()
}
