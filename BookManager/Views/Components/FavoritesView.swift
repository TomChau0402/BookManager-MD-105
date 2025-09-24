//
//  FavoriteView.swift
//  BookManager
//
import SwiftUI

struct FavoritesView: View {
    @Binding var books: [Book]
    let gridLayout = [ GridItem(.flexible())]
    @State var isFilteringSheetPresented: Bool = false
//    @State var searchGenre: Genre?
    @State var selectedGenre: Genre?
    
    private var favoriteBooks: [Binding<Book>]{
        $books.filter {
            $0.wrappedValue.isFavorite
            && (selectedGenre == nil || $0.wrappedValue.genre == selectedGenre)
        }
    }
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: gridLayout) {
                    ForEach(favoriteBooks, id: \.self.id) { bindingToBook in
                        NavigationLink(destination: BookDetailView(book: bindingToBook)) {
                            SquareCardView(book: bindingToBook)
                        }
                }
            }
        }
            .navigationTitle(Text("Favorites"))
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {isFilteringSheetPresented = true} ) {
                            Image(systemName: "line.horizontal.3.decrease.circle")
                                .foregroundColor(.red)
                                .accessibilityLabel(Text("Clear All Favorites"))
                        }
                    }
                }
                .sheet(isPresented: $isFilteringSheetPresented){
                    Text("Filtered elements")
                }
        }
    }
}

 
//

