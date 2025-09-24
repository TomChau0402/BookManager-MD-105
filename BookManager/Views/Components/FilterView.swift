//
//  FilterView.swift
//  BookManager
import SwiftUI

struct FilterView: View {
    @Binding var selectedGenre: Genre?
    var body: some View {
        Form{
            Section(header: Text("Filter by Genre")){
                Picker("Genre", selection: $selectedGenre){
                    Text ("Select a genre...").tag(nil as Genre?)
                    ForEach(Genre.allCases, id: \.self) { status in
                        Text(status.rawValue).tag(status)
                    }
                    
                }
                
            }
        }
    }
}
    
    


