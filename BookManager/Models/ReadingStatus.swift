//
//  ReadingStatus.swift
//  BookManager

enum ReadingStatus: String, CaseIterable, Hashable, Codable {
    case planToRead = "Plan to Read"
    case reading = "Reading"
    case finished = "Finished"
    case dropped = "Dropped"
    case unknown = "Unknows"
  
}
