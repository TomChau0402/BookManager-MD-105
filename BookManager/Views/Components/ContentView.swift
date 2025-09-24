//
//  ContentView.swift
//  BookManager
// imperative vs Declarative Swift UI

//deprecated

import SwiftUI

struct ContentView: View {
    @State var books = getBooks()
    
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
