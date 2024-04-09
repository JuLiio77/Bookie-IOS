//
//  DetalleLibroBibliotecaView.swift
//  BookieApp
//
//  Created by dam2 on 9/4/24.
//

import SwiftUI

struct DetalleLibroBibliotecaView: View {
    
    let columnas = [
        GridItem(.flexible(minimum: 60, maximum: 100), spacing: 60),
        GridItem(.adaptive(minimum: 60, maximum: 100), spacing: 60),
        GridItem(.flexible(minimum: 60, maximum: 100), spacing: 60)
    ]
    
    let book: Book
    
    var body: some View {
        
        NavigationStack{
            
            ScrollView(.vertical){
                
                VStack{
                    
                    Label("Julio Vera", systemImage: "globe")
                        .padding(.leading, 250)
                        .padding([.top, .bottom], 20)
                    
                    
                    if let urlString = book.volumeInfo.imageLinks?.smallThumbnail,
                       let url = URL(string: urlString) {
                        AsyncImage(url: url) { image in
                            image.resizable()
                        } placeholder: {
                            ProgressView()
                        }
                        .frame(width: 186, height: 246)
                        .foregroundColor(.blue)
                        .background(Color.gray, in: .rect)
                        .cornerRadius(20)
                    }
                    
                    HStack{
                        Image(systemName: "heart")
                            .foregroundStyle(.brown)
                        Text("Disponible")
                            .padding(.leading, 50)
                            .foregroundStyle(.cyan)
                    }
                    .padding(.top, 15)
                    
                    Divider()
                        .padding(.top, 15)
                                        
                    
                    VStack {
                        
                        Text("Titulo")
                            .font(.title3)
                            .bold()
                            .padding(.top, 10)
                            .padding(.trailing, 276)
                        
                        Text(book.volumeInfo.title)
                            .padding(.top, 1)
                            .padding(.trailing)
                        
                        //.frame(width: 420, height: 60)
                        
                        Text("Autor")
                            .font(.title3)
                            .bold()
                            .padding(.top, 20)
                            .padding(.trailing, 276)
                        
                        Text(book.volumeInfo.authors.joined(separator: ", "))
                            .padding(.top, 1)
                            .padding(.trailing, 218)
                        
                        
                        Text("Descripción")
                            .font(.title3)
                            .bold()
                            .padding(.top, 20)
                            .padding(.trailing, 213)
                        
                        Text(book.volumeInfo.description)
                            .padding(.top, 1)
                            .frame(width: 328)
                        
                        
                        Text("Páginas")
                            .font(.title3)
                            .bold()
                            .padding(.top, 20)
                            .padding(.trailing, 248)
                        
                        Text(String(book.volumeInfo.pageCount ?? 0))
                            .padding(.top, 1)
                            .padding(.trailing, 288)
                        
                        
                        Text("Idioma")
                            .font(.title3)
                            .bold()
                            .padding(.top, 20)
                            .padding(.trailing, 248)
                        
                        Text(String(book.volumeInfo.language ?? "Desconocido"))
                            .padding(.top, 1)
                            .padding(.trailing, 288)
                        
                        
                        Text("Categoria")
                            .font(.title3)
                            .bold()
                            .padding(.top, 20)
                            .padding(.trailing, 220)
                        
                        Text(book.volumeInfo.categories?.joined(separator: ", ") ?? "Desconocido")
                            .padding(.top, 1)
                            .padding(.trailing, 250)
                    }
                    .padding(.bottom, 10)
                    .frame(width: 420)
                }
            }
        }
    }
}

#Preview {
    DetalleLibroBibliotecaView(book: Book(id: "7X6SRDD4_9sC", volumeInfo: VolumeInfo(title: "La invasión de Estados Unidos a Panamá", authors: ["Ricaurte Soler"], publisher: "Siglo XXI", description: "El 20 de diciembre de 1989 Panamá fue duramente bombardeada por las fuerzas aéreas estadunidenses e invadida por 24 000 infantes de Marina. En pocos días murieron cerca de 4 000 ciudadanos panameños entre civiles y militares. El presidente de la República fue secuestrado y se impuso un nuevo gobierno. En este libro, un destacado escritor panameño interpreta este acontecimiento.", industryIdentifiers: [], categories: ["History"], pageCount: 196, language: "es", imageLinks: ImageLinks(smallThumbnail: "http://books.google.com/books/content?id=7X6SRDD4_9sC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api", thumbnail: "http://books.google.com/books/content?id=7X6SRDD4_9sC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"))))
}
