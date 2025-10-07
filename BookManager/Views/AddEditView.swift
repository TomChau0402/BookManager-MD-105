//
//  AddEditView.swift
//  BookManager
import SwiftUI
import SwiftData

struct AddEditView: View {
    
    @StateObject private var viewModel: AddEditViewModel
    
    @Environment(\.dismiss) var dismiss
    
    init(book: PersistentBook? = nil, modelContext: ModelContext) {
        _viewModel = StateObject(
                    wrappedValue: AddEditViewModel(
                        book: book,
                        modelContext: modelContext
                    ))
            
    }
    var body: some View {
        NavigationView {
            ZStack{
                LinearGradient(
                    gradient: Gradient(
                        colors: [.gray.opacity(0.2), .gray],
                        startPoint: .top,
                        endpoint:.bottom)
                    Form {
                        Section(header: Text("Book details")) {
                            TextField("title of the book", text: $viewModel.title)
                            TextField("author of the book", text: $viewModel.author)
                            TextField("genre of the book", text: $viewModel.genre)
                        })
                    }
            }
        }
    }
}

