//
//  Untitled.swift
//  BookManager


import SwiftData
import Foundation

@Model
class UploadImage {
    @Attribute(.externalStorage) var imageData: Data?
    
    init(incomingImageData: Data? = nil) {
        self.imageData = incomingImageData
    }
}
