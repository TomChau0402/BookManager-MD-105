//
//  SquareCardView.swift
//  BookManager
//
//  Created by Amy Vu on 9/24/25.
//

import SwiftUI

struct SquareCardView: View {
    @Binding var book: Book
    
    var body: some View {
        Image(book.image)
        .resizable()
        .scaledToFit()
        .frame(width: 100, height: 100)
        
        Text(book.title)
        
        Text(book.author)
        
        Text(book.description)
    }
}

//#Preview {
//    SquareCardView()
//}
