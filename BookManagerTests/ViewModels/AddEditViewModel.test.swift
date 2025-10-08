//
//  AddEditViewModel.test.swift
//  BookManager
//
import Testing
import SwiftData
@testable import BookManager

@MainActor
struct AddEditeViewModelTests {
    
    @Test("ViewModel initialisation correctluy for a new book")
    func testNewBookInitialization() throws {
        //phase 1: Arrange
        let container = try ModelContainer( for: PersistentBook.self,
                configurations: .init(isStoredInMemoryOnly: true))
        let modelContext = container.mainContext
        
        
        //phrase 2: Act
        let viewModel = AddEditViewModel(modelContext: modelContext)
        
        //Phrase 3: Assert
        #expect(viewModel.book.title == "")
        #expect(viewModel.book.author == "")
        #expect(viewModel.book.isFavorite == false)
        #expect(viewModel.book.id == nil)
    }
    @Test("ViewModel initialisation correctly for an existing book")
    func testExistingBookInitialization() throws {
        // phase 1: arrange
        let container = try ModelContainer(
            for: PersistentBook.self,
            configurations: .init(isStoredInMemoryOnly: true))
        let modelContext = container.mainContext
        
        let book = PersistentBook(
            title: "1984",
            author: "George Orwell",
            genre: .fantasy)
        // phas 2 Act
        let viewModel = AddEditViewModel(book: book, modelContext:modelContext)
        // phase 3: Assert
        #expect (viewModel.title == "test book")
        #expect(viewModel.author == "George Orwell")
        #expect(viewModel.navigationTitle == "Edit Book")
        #expect(!viewModel.isSaveButtonDisabled)
        
        //check small changes
        //Act 2
        
     
    }
    @Test("ViewMode creates a new book correctly")
    func testCreateNewBook() throws {
        
    }
    @Test("ViewModel updates an existing book correctly")
    func testUpdateExistingBook() throws {
        
    }
}
