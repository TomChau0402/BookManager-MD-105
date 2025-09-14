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
    var rating: Double
    var review: String

    
}
