//
//  FavoritesView.test.swift
//  BookManager
//
import Testing
@testable import BookManager

@MainActor @Suite("BookManager")
struct FavoritesViewTests {
    @Test
    func testFilterFunction() {
        let books: [Book] = [
            PersistentBook(title:"Book1", isFavorite:true),
            PersistentBook(title:"Book2"),
            PersistentBook(title:"Book3")
            ]
        
        let favoriteBooks = filterFavoriteBooks(books: books, selectedGenre: nil, selectedStatus: nil)
        
        #expect(favoriteBooks.count == 1)
        #expect(favoriteBooks[0].isEmpty == false)
        
    }
    }

//

