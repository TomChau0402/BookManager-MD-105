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
        
        
        //phrase 2:
        let viewModel = AddEditViewModel(modelContext: modelContext)
        
        //Phrase 3: Assert
        #expect(viewModel.book.title == "")
        #expect(viewModel.book.author == "")
        #expect(viewModel.book.isFavorite == false)
        #expect(viewModel.book.id == nil)
    }
    @Test("ViewModel initialisation correctly for an existing book")
    func testExistingBookInitialization() throws {
        
    }
    @Test("ViewMode creates a new book correctly")
    func testCreateNewBook() throws {
        
    }
    @Test("ViewModel updates an existing book correctly")
    func testUpdateExistingBook() throws {
        
    }
}
