//
//  CeldaBibloteca.swift
//  BookieApp
//
//  Created by dam2 on 14/3/24.
//

import SwiftUI

struct CeldaBibloteca: View {
    
    //@ObservedObject var books: BookModel
    
    let book: Book
    
    var body: some View {
        ZStack{
            
                Image(systemName: "")
                    .frame(width: 350, height: 150)
                    .background(Color.color.opacity(0.5))
                    .cornerRadius(20)
                
                /*Image(systemName: "")
                    .frame(width: 114, height: 122)
                    .background(Color.gray)
                    .cornerRadius(20)
                    .padding(.trailing, 200)*/
            
            if let urlString = book.volumeInfo.imageLinks?.smallThumbnail,
                let url = URL(string: urlString) {
                AsyncImage(url: url) { image in
                    image.resizable()
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 114, height: 122)
                .background(Color.gray)
                .cornerRadius(20)
                .padding(.trailing, 200)
            }
                
                
                VStack(alignment: .leading){
                    
                    
                    Text(book.volumeInfo.title)
                        .bold()
                        .padding(.leading, 90)
                        .padding(.trailing, 10)
                        .lineLimit(2, reservesSpace: false)
                        .font(.callout)
                    
                    Text("Autor: \(book.volumeInfo.authors.joined(separator: ", "))")
                        .padding(.leading, 90)
                        .padding(.trailing, 10)
                        .lineLimit(2, reservesSpace: false)
                        .font(.caption)
                    
                    Button("Ver mas"){
    
                    }
                    .frame(width: 130, height: 25)
                    .background(Color.button)
                    .cornerRadius(20)
                    .padding(.leading, 150)
                    .foregroundColor(.black)
                    .font(.caption)
                    .padding(.top, 18)
                    
                    
                    
                    
                }
                .padding(.leading, 50)
                .frame(width: 350)
                                
            
        }
    }
}

#Preview {
    CeldaBibloteca(book: Book(id: "1", volumeInfo: VolumeInfo(title: "hola hola", authors: ["fdhk"], publisher: "", description: "", industryIdentifiers: [], categories: [""], pageCount: 100, imageLinks: ImageLinks(smallThumbnail: "http://books.google.com/books/content?id=W5jnCgAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api", thumbnail: ""))))
}
