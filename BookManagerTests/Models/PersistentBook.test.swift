//
//  PersistentBook.test.swift
//  BookManager
//
import Testing
@testable import BookManager

@Test("Persistent Book initialzer")
func testPersistentBookInitializer() {
    //Arrange
    let title = "Test Title"
    let status = ReadingStatus.reading
    let author = "Test Author"
    let isFavorite = true
    
    //Act
    
    let book = PersistentBook(title: title)
    
    //Assert
    
    #expect(book.title == title)
    #expect(book.status == .unknown)
    #expect(book.author == "")
    #expect(book.isFavorite == false)
    
    //Act
    
    book.status = status
    book.author = author
    book.isFavorite = isFavorite
    
    
    #expect(book.status == .reading)
    #expect(book.author == author)
    #expect(book.isFavorite == isFavorite)
    
    
    
}
