//
//  EditView.swift
//  BookManager
//
import SwiftUI

struct EditView: View {
    
    @Binding var book: Book
    @State private var workingBook: Book
    @Environment(\.dismiss) var dismiss
    
    init(book: Binding<Book>) {
        self._book = book
        _workingBook = .init(initialValue: book.wrappedValue)
    }
    
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(
                    colors: [.gray.opacity(0.1), .gray.opacity(0.3)]
                ),
                startPoint: .top,
                endPoint: .bottom
            )
            
            Form {
                Section {
                    TextField("Title of the $workingBook", text: $book.title)
                    TextField("Author of the Book", text: $book.author)
                    TextEditor(text: $book.description)
                        .frame(height: 150)
                    
                }
                Section(header: Text ("My review")) {
                    StarRatingView( rating: $book.rating)
                    TextEditor(text: $book.review)
                        .frame((height: 150))
                        
                    Text("Book Details")
                }
            }
            .scrollContentBackground(.hidden) // To make the form transparent
        }
    }
}
    
    


