//
//  CeldaLibroFavorito.swift
//  BookieApp
//
//  Created by dam2 on 10/4/24.
//

import SwiftUI

struct CeldaLibroFavorito: View {
        
    let book: Book
    
    var body: some View {
        
        VStack{
            
            if let urlString = book.volumeInfo.imageLinks?.smallThumbnail,
               let url = URL(string: urlString) {
                AsyncImage(url: url) { image in
                    image.resizable()
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 156, height: 216)
                .background(Color.gray, in: .rect)
                .cornerRadius(20)
            }
            
            Text(book.volumeInfo.title)
                .frame(width: 156)
                .padding(.top, 10)
                .padding(.trailing, 10)
                .font(.subheadline)
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
                .lineLimit(3)
                .truncationMode(.tail)
        }
        .padding([.top, .bottom], 16)
    }
}

#Preview {
    CeldaLibroFavorito(book: Book(id: "7X6SRDD4_9sC", volumeInfo: VolumeInfo(title: "La invasión de Estados Unidos a Panamá", authors: ["Ricaurte Soler"], publisher: "Siglo XXI", description: "El 20 de diciembre de 1989 Panamá fue duramente bombardeada por las fuerzas aéreas estadunidenses e invadida por 24 000 infantes de Marina. En pocos días murieron cerca de 4 000 ciudadanos panameños entre civiles y militares. El presidente de la República fue secuestrado y se impuso un nuevo gobierno. En este libro, un destacado escritor panameño interpreta este acontecimiento.", industryIdentifiers: [], categories: ["History"], pageCount: 196, language: "es", imageLinks: ImageLinks(smallThumbnail: "http://books.google.com/books/content?id=7X6SRDD4_9sC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api", thumbnail: "http://books.google.com/books/content?id=7X6SRDD4_9sC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"))))
}
