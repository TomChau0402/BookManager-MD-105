//
//  AddEditView.swift
//  BookManager
//


import SwiftUI
import SwiftData

struct AddEditView: View {
    
    var book: PersistentBook? = nil
    @State private var workingBook: PersistentBook
    @Environment(\.dismiss) var dismiss
    @State private var navigationTitle: String
    @State private var cover: UIImage? = nil
    
    @Environment(\.modelContext) private var modelContext
    
    init(book: PersistentBook? = nil) {
        self.book = book
        _workingBook = .init(initialValue: book ??
                             PersistentBook(backingData: <#any BackingData<PersistentBook>#>),
        self._navigationTitle = State(initialValue: book != nil ?
                                      "Add a Book" : "Edit a Book")
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
                    TextField("ISBN", text: $workingBook.author)
                    
                    HStack {
                        Button("Select a cover") {
                            
                        }
                    }
                }
            }
        }
    }
}
