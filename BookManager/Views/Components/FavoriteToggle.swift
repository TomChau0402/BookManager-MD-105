//
//  FavoriteToggle.swift
//  BookManager


import SwiftUI

struct FavoriteToggle: View {
    @Binding var isFavorite: Bool
    
    // aninmation variablies
    
    @State private var scale: CGFloat = 1
    @State private var opacity: CGFloat = 0
    @State private var offsetY: CGFloat = 0
    
    var body: some View {
        ZStack {
            Image(systemName: "heart.fill")
                .resizable()
                .frame(width: 20, height: 20)
                .foregroundColor(.red)
                .opacity(opacity)
                .scaleEffect(scale)
                .offset(y: offsetY)
            
            Toggle(isOn: $isFavorite) {
                Image(systemName: isFavorite ? "heart.fill": "heart")
                    .foregroundColor(isFavorite ? .red : .secondary)
                    
            }
            .toggleStyle(.button)
            .buttonStyle(.plain)
            .animation(.spring, value: isFavorite)
            .accessibilityLabel(isFavorite ? "Remove from favorites" : "Add to favorites")
            .onChange(of: isFavorite) {oldValue, newValue in
                guard  newValue == true else{
                    return
            }
                // if guard is true it contains to here
            }
        }
    }
    
}
