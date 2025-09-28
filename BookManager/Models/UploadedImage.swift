//
//  Untitled.swift
//  BookManager


import SwiftUI

import Foundation

@Model
class UploadImage {
    @Attribute(.externalStorage) var imageData: Data?
    
    init(incomingImageData: Data? = nil) {
        
        imageData = incomingImageData}
}
}
