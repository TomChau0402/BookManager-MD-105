//
//  BookListItem.swift
//  BookManager
//

//
import SwiftUI

struct BookListItemView: View {
    var book: Book
    
    var body: some View {
        HStack {
            Image(book.image)
                .resizable()
                .scaledToFit( )
                .frame(width: 50, height: 50)
            VStack(alignment: .leading) {
                Text(book.title)
                    .border(Color.gray)
                    .padding()
                    .cornerRadius(5)
                Text(book.description)
                    .font(.system(size: 12))
                    .foregroundColor(.secondary)
                
            }
            
         
        }
    }
}
    
