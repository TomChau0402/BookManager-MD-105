//
//  PersistentBook.swift
//  BookManager
import Foundation
import SwiftData

@Model
class PersistentBook {
    var title: String
    var imageData: Data?
    var summary: String
    var author: String
    var rating: Double
    var review: String
    var status: ReadingStatus = .unknown
    var genre: Genre = .unknown
    var isFavorite: Bool = false
    
    init(title: String, imageData: Data? = nil, summary: String, author: String, rating: Double, reviewed: String) {
        self.title = title
        self.imageData = imageData
        self.description = description
        self.author = author
        self.rating = rating
        self.review = review
        self.status = .unknown
        self.genre = .unknown
        self.isFavorite = false
    }
    
}

