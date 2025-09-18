//
//  BookDetailView.swift
//  BookManager
//
import SwiftUI

struct BookDetailView: View {
    var book: Book
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                // Book Cover Image
                if !book.image.isEmpty {
                    Image(book.image)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 300)
                        .cornerRadius(12)
                        .shadow(color: .black.opacity(0.2), radius: 8, x: 0, y: 4)
                        .padding(.horizontal)
                }
                
                // Title Section
                VStack(alignment: .leading, spacing: 8) {
                    Text(book.title)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                    
          
                        .font(.title3)
                        .foregroundColor(.secondary)
                }
                .padding(.horizontal)
                
                // Rating Section
                HStack(spacing: 12) {
                    // Star Rating
                    HStack(spacing: 4) {
                        ForEach(1...5, id: \.self) { star in
                            Image(systemName: star <= Int(book.rating ?? nil ? "star.fill" : "star")
                                .foregroundColor(.yellow)
                                .font(.title3)
                        }
                    }
                    
                    // Numeric Rating
                    Text(String(format: "%.1f/5", book.rating!))
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(.primary)
                }
                .padding(.horizontal)
                
                Divider()
                    .padding(.horizontal)
                
                // Description Section
                VStack(alignment: .leading, spacing: 12) {
                    Text("Description")
                        .font(.headline)
                        .foregroundColor(.primary)
                    
                    Text(book.description)
                        .font(.body)
                        .foregroundColor(.primary)
                        .lineSpacing(6)
                        .fixedSize(horizontal: false, vertical: true)
                }
                .padding(.horizontal)
                
                Divider()
                    .padding(.horizontal)
                
                // Review Section
                VStack(alignment: .leading, spacing: 12) {
                    Text("Review")
                        .font(.headline)
                        .foregroundColor(.primary)
                    
                    if book.review!.isEmpty {
                        Text("No review yet")
                            .font(.body)
                            .foregroundColor(.secondary)
                            .italic()
                    } else {
                        Text(book.review!)
                            .font(.body)
                            .foregroundColor(.primary)
                            .lineSpacing(6)
                            .padding()
                            .background(Color(.systemGray6))
                            .cornerRadius(10)
                    }
                }
                .padding(.horizontal)
                
                // Book Info Section
                VStack(alignment: .leading, spacing: 8) {
                    Text("Details")
                        .font(.headline)
                        .foregroundColor(.primary)
                    
                   
                }
                .padding(.horizontal)
            }
            .padding(.vertical)
        }
        .navigationTitle("Book Details")
        .navigationBarTitleDisplayMode(.inline)
        .background(Color(.systemGroupedBackground))
    }
}

// Helper view for info rows
struct InfoRow: View {
    let label: String
    let value: String
    
    var body: some View {
        HStack {
            Text(label)
                .foregroundColor(.secondary)
            Spacer()
            Text(value)
                .foregroundColor(.primary)
                .fontWeight(.medium)
        }
        .font(.subheadline)
        .padding(.vertical, 2)
    }
}

                    
            
                
    


