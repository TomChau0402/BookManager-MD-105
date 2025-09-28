//
//  BookListView.swift
//  BookManager
import SwiftUI
import SwiftData

struct BookListView: View {
    @Query var books:[PersistentBook]
    @State var showAddView: Bool = false
    @State var newBook = Book(title: "")
    
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(books) { book in
                    NavigationLink(destination: BookDetailView(book:
                                                                
                                                                $bookItem)) {
                        BookListView.self
                            .navigationTitle("Books")
                            .toolbar {
                                ToolbarContent {
                                    Button(action: {
                                        self.showAddView.toggle()
                                    }) {
                                        Image(systemName: "plus")
                                    }
                                }
                            }
                    }
                    }
                }
         
        }
    }
}
