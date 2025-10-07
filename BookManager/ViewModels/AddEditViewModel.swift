//
//  AddEditViewModel.swift
//  BookManager
//
import SwiftUI
import SwiftData

@MainActor
class AddEditViewModel: ObservableObject {
    
    private var bookToEdit: Book?
    private let modelContext: ModelContext
    
    @Published var title: String = ""
    @Published var author: String = ""
    @Published var summary: String = ""
    @Published var rating: Int = 0
    @Published var review: String = ""
    @Published var status: ReadingStatus = .unknown
    @Published var genre: Genre = .unknown
    @Published var isFavorite: Bool = false
    @Published var cover: UIImage? = nil
    
    var navigationTitle: String {
        bookToEdit != nil ? "Edit Book" : "Add Book"
    }
    init(book: Book? = nil, modeContext: ModelContext) {
        self.bookToEdit = book
        self.modelContext = modeContext
        
        if let book {
            self.title = book.title
            self.author = book.author
            self.summary = book.summary
            self.rating = book.rating
            self.review = book.review
            self.status = book.status
            self.genre = book.genre
            self.isFavorite = book.isFavorite
            if let coverData = book.imageData {
                self.cover = UIImage(data: coverData)
            }
        }
        
    }
    
    func save () {
        let isANewBook = bookToEdit == nil
        let bookToSave = bookToEdit ?? PersistentBook(title:"")
        bookToSave.title = title
        bookToSave.author = author
        bookToSave.summary = summary
        bookToSave.rating = rating
        bookToSave.review = review
        bookToSave.status = status
        bookToSave.genre = genre
        bookToSave.isFavorite = isFavorite
        if(cover != nil){
            bookToSave.imageData = cover?.jpegData(compressionQuality: 0.8)
        }
      if isANewBook {
            modelContext.insert(bookToSave)
        }
        do {
            try modelContext.save()
        } catch {
            print("Failed to save context: \(error)")
        }
    }
}

