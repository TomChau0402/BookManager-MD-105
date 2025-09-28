//
//  AddEditView.swift
//  BookManager
import SwiftUI
import SwiftData

struct AddEditView: View {
    @Binding var book: Book
    @State private var workingBook: Book
    @Environment(\.dismiss) var dismiss
    @State private var navigationTitle: String
    @State private var cover: UIImage? = nil
    
    init(book: Binding<Book>) {
        self._book = book
        _workingBook = .init(wrappedValue: book.wrappedValue)
        navigationTitle = book.wrappedValue.id == nil ? "Add Book" : "Edit Book"
    }
    
}

