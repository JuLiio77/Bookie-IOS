//
//  ListaLibros.swift
//  BookieApp
//
//  Created by dam2 on 11/3/24.
//

import SwiftUI

struct ListaLibros: View {

    @State var search = ""
    var categoria: String
    
    let columnas = [
        GridItem(.flexible(minimum: 50, maximum: 200), spacing: 0),
        GridItem(.flexible(minimum: 50, maximum: 200), spacing: 0)
    ]
    
    var body: some View {
        

        NavigationStack{
            
            Section {
                
                Text(categoria)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 22)
                    .padding([.top, .bottom], 4)
                
                ScrollView(.vertical){

                    LazyVGrid(columns: columnas, content: {
                        
                        NavigationLink(destination: DetalleLibro(book: Book(id: "7X6SRDD4_9sC", volumeInfo: VolumeInfo(title: "La invasión de Estados Unidos a Panamá", authors: ["Ricaurte Soler"], publisher: "Siglo XXI", description: "El 20 de diciembre de 1989 Panamá fue duramente bombardeada por las fuerzas aéreas estadunidenses e invadida por 24 000 infantes de Marina. En pocos días murieron cerca de 4 000 ciudadanos panameños entre civiles y militares. El presidente de la República fue secuestrado y se impuso un nuevo gobierno. En este libro, un destacado escritor panameño interpreta este acontecimiento.", industryIdentifiers: [], categories: ["History"], pageCount: 196, language: "es", imageLinks: ImageLinks(smallThumbnail: "http://books.google.com/books/content?id=7X6SRDD4_9sC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api", thumbnail: "http://books.google.com/books/content?id=7X6SRDD4_9sC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"))), bookmodelFav: BookModelFavoritos(id: "", isFavorite: false))) {
                            VistaCeldaLibro()
                        }
                        
                        NavigationLink(destination: DetalleLibro(book: Book(id: "7X6SRDD4_9sC", volumeInfo: VolumeInfo(title: "La invasión de Estados Unidos a Panamá", authors: ["Ricaurte Soler"], publisher: "Siglo XXI", description: "El 20 de diciembre de 1989 Panamá fue duramente bombardeada por las fuerzas aéreas estadunidenses e invadida por 24 000 infantes de Marina. En pocos días murieron cerca de 4 000 ciudadanos panameños entre civiles y militares. El presidente de la República fue secuestrado y se impuso un nuevo gobierno. En este libro, un destacado escritor panameño interpreta este acontecimiento.", industryIdentifiers: [], categories: ["History"], pageCount: 196, language: "es", imageLinks: ImageLinks(smallThumbnail: "http://books.google.com/books/content?id=7X6SRDD4_9sC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api", thumbnail: "http://books.google.com/books/content?id=7X6SRDD4_9sC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"))), bookmodelFav: BookModelFavoritos(id: "", isFavorite: false))) {
                            VistaCeldaLibro()
                        }
                        
                        NavigationLink(destination: DetalleLibro(book: Book(id: "7X6SRDD4_9sC", volumeInfo: VolumeInfo(title: "La invasión de Estados Unidos a Panamá", authors: ["Ricaurte Soler"], publisher: "Siglo XXI", description: "El 20 de diciembre de 1989 Panamá fue duramente bombardeada por las fuerzas aéreas estadunidenses e invadida por 24 000 infantes de Marina. En pocos días murieron cerca de 4 000 ciudadanos panameños entre civiles y militares. El presidente de la República fue secuestrado y se impuso un nuevo gobierno. En este libro, un destacado escritor panameño interpreta este acontecimiento.", industryIdentifiers: [], categories: ["History"], pageCount: 196, language: "es", imageLinks: ImageLinks(smallThumbnail: "http://books.google.com/books/content?id=7X6SRDD4_9sC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api", thumbnail: "http://books.google.com/books/content?id=7X6SRDD4_9sC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"))), bookmodelFav: BookModelFavoritos(id: "", isFavorite: false))) {
                            VistaCeldaLibro()
                        }
                        
                        NavigationLink(destination: DetalleLibro(book: Book(id: "7X6SRDD4_9sC", volumeInfo: VolumeInfo(title: "La invasión de Estados Unidos a Panamá", authors: ["Ricaurte Soler"], publisher: "Siglo XXI", description: "El 20 de diciembre de 1989 Panamá fue duramente bombardeada por las fuerzas aéreas estadunidenses e invadida por 24 000 infantes de Marina. En pocos días murieron cerca de 4 000 ciudadanos panameños entre civiles y militares. El presidente de la República fue secuestrado y se impuso un nuevo gobierno. En este libro, un destacado escritor panameño interpreta este acontecimiento.", industryIdentifiers: [], categories: ["History"], pageCount: 196, language: "es", imageLinks: ImageLinks(smallThumbnail: "http://books.google.com/books/content?id=7X6SRDD4_9sC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api", thumbnail: "http://books.google.com/books/content?id=7X6SRDD4_9sC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"))), bookmodelFav: BookModelFavoritos(id: "", isFavorite: false))) {
                            VistaCeldaLibro()
                        }
                        
                        NavigationLink(destination: DetalleLibro(book: Book(id: "7X6SRDD4_9sC", volumeInfo: VolumeInfo(title: "La invasión de Estados Unidos a Panamá", authors: ["Ricaurte Soler"], publisher: "Siglo XXI", description: "El 20 de diciembre de 1989 Panamá fue duramente bombardeada por las fuerzas aéreas estadunidenses e invadida por 24 000 infantes de Marina. En pocos días murieron cerca de 4 000 ciudadanos panameños entre civiles y militares. El presidente de la República fue secuestrado y se impuso un nuevo gobierno. En este libro, un destacado escritor panameño interpreta este acontecimiento.", industryIdentifiers: [], categories: ["History"], pageCount: 196, language: "es", imageLinks: ImageLinks(smallThumbnail: "http://books.google.com/books/content?id=7X6SRDD4_9sC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api", thumbnail: "http://books.google.com/books/content?id=7X6SRDD4_9sC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"))), bookmodelFav: BookModelFavoritos(id: "", isFavorite: false))) {
                            VistaCeldaLibro()
                        }
                        
                        NavigationLink(destination: DetalleLibro(book: Book(id: "7X6SRDD4_9sC", volumeInfo: VolumeInfo(title: "La invasión de Estados Unidos a Panamá", authors: ["Ricaurte Soler"], publisher: "Siglo XXI", description: "El 20 de diciembre de 1989 Panamá fue duramente bombardeada por las fuerzas aéreas estadunidenses e invadida por 24 000 infantes de Marina. En pocos días murieron cerca de 4 000 ciudadanos panameños entre civiles y militares. El presidente de la República fue secuestrado y se impuso un nuevo gobierno. En este libro, un destacado escritor panameño interpreta este acontecimiento.", industryIdentifiers: [], categories: ["History"], pageCount: 196, language: "es", imageLinks: ImageLinks(smallThumbnail: "http://books.google.com/books/content?id=7X6SRDD4_9sC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api", thumbnail: "http://books.google.com/books/content?id=7X6SRDD4_9sC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"))), bookmodelFav: BookModelFavoritos(id: "", isFavorite: false))) {
                            VistaCeldaLibro()
                        }
                    })
                }
            }            
        }
        .searchable(text: $search)
    }
}

#Preview {
    ListaLibros(categoria: "Romance")
        .environmentObject(LibrosFavoritos())
}
