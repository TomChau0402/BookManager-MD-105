//
//  ContentView.swift
//  BookManager
// imperative vs Declarative Swift UI

//deprecated

import SwiftUI


struct ContentView: View {
    let books = getBooks()
    var body: some View {
        NavigationStack {
            List(books, id: \.self.id) { bookItem in
                NavigationLink(destination: BookDetailView(book: bookItem)) {
                    BookListItemView(book: bookItem)
                }
            }
            
            .navigationBarTitle("Book Manager")
            Spacer()
            
        }
    }
}
#Preview {
    ContentView()
    
}
