//
//  BookListView.swift
//  BookManager
import SwiftUI
import SwiftData

struct BookListView: View {
    @Query var books:[PersistentBook]
    @State var showAddView: Bool = false
    @State var newBook = Book(title: "")
    @Environment(\.modelContext) private var modelContext
    
    
    var body: some View {
        NavigationStack {
            List { books, id: \.self.id) { bookItem in
                NavigationLink(destination: BookDetailView(book:booItem)){
                    BookListItemView(book: bookItem)
                }
                }
            .navigationBarTitle("Book Manager")
            .navigationBarItem(trailing: Button("Add", action: {
                showAdddView.toggle()
            }))
            .sheet(isPresented: $showAddView,) {} content:{
                AddEditView(book: $newBook, onSave: {
                    
                }
            }
            }) {
                
            }
                
            }

      
