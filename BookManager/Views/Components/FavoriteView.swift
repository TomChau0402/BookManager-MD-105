//
//  FavoriteView.swift
//  BookManager
//
import SwiftUI

struct FavoritesView: View {
    @Binding var Books: [Book]
    let gridLayout = [ GridItem(.flexible())]
    private var favoriteBooks: [Binding<Book>]
    
    {
        $book.filter { $0.wrappedValue.isFavorite}
        
    }
}
 
//

