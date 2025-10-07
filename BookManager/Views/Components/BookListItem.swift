//
//  BookListItem.swift
//  BookManager
//

//
import SwiftUI

struct BookListItemView: View {
    @Binding var books: [Book]
//    @State var newBook = Book()
    

    
    var body: some View {
        NavigationStack {
            List{
                ForEach($books, id: \.self.id){ $bookItem in
                    NavigationLink(destination: BookDetailView(book: $bookItem)){
                        HStack{
                            Image(bookItem.image)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 90, height: 90)
                            
                            Text(bookItem.title)
                        }
                    
                    }
                }
            }
        }
        
    }
}
    
