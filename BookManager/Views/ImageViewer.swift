//
//  ImageViewer.swift
//  BookManager
//
import SwiftUI
import SwiftData

struct ImageViewer: View {
    @Query var image: [UploadImage]
    var body: some View {
        NavigationStack {
            VStack {
                if(images?.isEmpty){
                    Text("No image found")
                } else {
                    List(images!) { image in
                        Image(uiImage: UIImage(data: image.data)!)
                        HStack {
                            Text(image.name)
                            Spacer()
                            Text("\(image.data.count) bytes")
                        }
                    }
                }
            }
        }
        
    }
}
