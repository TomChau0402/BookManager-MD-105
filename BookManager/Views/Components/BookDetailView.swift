//
//  BookDetailView.swift
//  BookManager
//
import SwiftUI

struct BookDetailView: View {
    @Binding var book: Book
    @State var showCase: Bool = false
    
    //    var book: Book
    
    var body: some View {
        Text("Book details")
        
        
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
            
                
    


