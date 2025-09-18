//
//  EditView.swift
//  BookManager
//
import SwiftUI

struct EditView: View {
    @Binding var book: Book
    
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
                    TextField("Title of the Book", text: $book.title)
                    TextField("Author of the Book", text: $book.author)
                } header: {
                    Text("Book Details")
                }
            }
            .scrollContentBackground(.hidden) // To make the form transparent
        }
    }
}
    
    


