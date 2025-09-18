//
//  Book.swift
//  BookManager
//

//

import Foundation

struct Book: Identifiable {
    var id =  UUID()
    var title: String
    var image: String
    var description: String
    var author: String
    var rating: Double? = 0
    var review: String? = ""

    
}
