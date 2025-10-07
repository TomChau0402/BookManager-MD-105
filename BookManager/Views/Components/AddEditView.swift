//
//  AddEditView.swift
//  BookManager
//


import SwiftUI
import SwiftData

struct AddEditView: View {
    
    var booK: PresistentBook? = nil
    @State private var workingBook: PresistentBook
    @Environment(\.dismiss) var dismiss
    @State private var navigationTitle: String
    @State private var cover: UImange? = nil
    
    @Environment(\.modelContext) private var modelContext
    
    init(book: PresistentBook? = nil) {
        self.book = book
        _workingBook = .init(initialValue: book ??
        PresistentBook())
        self._navigationTitle = State(initialValue: book != nil ?
                                      "Add a Book" : : "Edit a Book")
        if(book?.imageData != nil) {
            cover = UIImage(data: book!.imageData!)
        }
    }
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text(self.navigationTitle)) {
                    TextField("Title", text: $workingBook.title)
                    TextField("Author", text: $workingBook.author)
                    TextField("ISBN", text: $workingBook.isbn)
                    
                    HStack {
                        Button("Select a cover") {
                            
                        }
                    }
                }
            }
        }
    }
}
