//
//  Api.swift
//  BookManager
//
import Foundation
func getBooks() -> [Book] {
    return [
        Book(title:"The Fellowship of the Ring",
             image:"lotr_fellowship",
             description:"The first book in the trilogy",
             author:"J.R.R. Tolkien",
             rating: 4,
             review: "Not the worst book",
             isFavorite: false
            ),
        Book(title:"The Two Towers",
             image:"lotr_towers",
             description:"The second book in the trilogy",
             author: "J.R.R. Tolkien",
             rating: 2,
             review: "The worst the worst book",
             isFavorite: false
            ),
        Book(title:"The Return of The King",
             image:"lotr_king",
             description:"The third and last book in the trilogy",
             author: "J.R.R. Tolkien",
             rating: 5,
             review: "Greatest of all time, but the worst book",
             isFavorite: true
            )
//        Book(title: "Empty book", 
//            )
    ]
}
//

