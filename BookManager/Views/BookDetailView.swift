//
//  BookDetailView.swift
//  BookManager
//
import SwiftUI

struct BookDetailView: View {
    @Binding var book: PersistentBook
    @State var showCase: Bool = false
    
    init(book: PersistentBook) {
        self.book = book
//        isFavorite =
    }

    
    var body: some View{
        Text("Book details")

        HStack {
//            Image(book.image)
            Image(
                uiImage: book.imageData != nil ? UIImage(data: book.imageData!)! : UIImage()
            )
                .resizable()
                .scaledToFit( )
                .frame(width: 50, height: 50)
            
            VStack(alignment: .leading) {
                Text(book.title)
                    .border(Color.gray)
                    .padding()
                    .cornerRadius(5)
                
                Text(book.summary)
                    .font(.system(size: 12))
                    .foregroundColor(.secondary)
                
                
            }
            
        }
    }
    
}
    
    // Helper view for info rows
//    struct InfoRow: View {
//        let label: String
//        let value: String
//        
//        var body: some View {
//            HStack {
//                Text(label)
//                    .foregroundColor(.secondary)
//                Spacer()
//                Text(value)
//                    .foregroundColor(.primary)
//                    .fontWeight(.medium)
//            }
//            .font(.subheadline)
//            .padding(.vertical, 2)
//        }
//    }
//}
//                    
            
                
    


