//
//  DetalleLibro.swift
//  BookieApp
//
//  Created by dam2 on 12/3/24.
//

import SwiftUI

struct DetalleLibro: View {
    
    @EnvironmentObject var librosFavoritos: LibrosFavoritos
    @State var datos = ModelUser()
    var book: Book
    @ObservedObject var bookmodelFav: BookModelFavoritos
    
    let columnas = [
        GridItem(.flexible(minimum: 60, maximum: 100), spacing: 60),
        GridItem(.adaptive(minimum: 60, maximum: 100), spacing: 60),
        GridItem(.flexible(minimum: 60, maximum: 100), spacing: 60)
    ]
        
    var body: some View {
        
        NavigationStack{
            
            ScrollView(.vertical){
                
                VStack{
                    
                    NavigationLink(destination: ViewPerfilAjeno()) {
                        Label(datos.nombre ?? "nombre", systemImage: "person.circle.fill")
                           .padding(.leading, 250)
                           .padding([.top, .bottom], 15)
                           .foregroundColor(.black)
                   }
                    
                    Image("misterio")
                        .frame(width: 166, height: 196)
                        .foregroundColor(.blue)
                        .background(Color.gray, in: .rect)
                        .cornerRadius(20)
                    
                    HStack{
                        Button(action: {
                            
                            bookmodelFav.isFavorite.toggle()
                            
                            if bookmodelFav.isFavorite {
                                librosFavoritos.anadirfav(book: book)
                            } else {
                                librosFavoritos.eliminarfav(book: book)
                            }
                        })
                        {
                            Image(systemName: bookmodelFav.isFavorite ? "heart.fill" : "heart")
                                .foregroundColor(bookmodelFav.isFavorite ? .red : .black)
                        }
                        
                        .foregroundStyle(.brown)
                        Text("Disponible")
                            .padding(.leading, 50)
                            .foregroundStyle(.cyan)
                    }
                    .padding(.top, 15)
                    
                    ZStack{
                        
                        Rectangle()
                            .frame(height: 80)
                            .foregroundStyle(Color.button)
                            .opacity(0.3)
                        
                        Text("Titulo")
                            .font(.title2)
                            .foregroundStyle(.brown)
                            .bold()
                            .padding(.bottom, 30)
                            .padding(.trailing, 270)
                        
                        Text("El conde de MonteCristo")
                            .padding(.top, 20)
                            .padding(.trailing, 150)
                    }
                    .padding([.top,.bottom], 15)
                    //.background(Color.button)
                    
                    LazyVGrid(columns: [GridItem(.flexible(minimum: 140, maximum: 220), spacing: 100),
                                        GridItem(.adaptive(minimum: 140, maximum: 250), spacing: 100)], content: {
                        
                        Text("Autor")
                            .font(.title2)
                            .foregroundStyle(.brown)
                            .bold()
                        Text("Genero")
                            .font(.title2)
                            .foregroundStyle(.brown)
                            .bold()
                        Text("Alexandre Duque")
                        
                        
                        Text("Terror")
                        
                        Text("Estado")
                            .font(.title2)
                            .foregroundStyle(.brown)
                            .bold()
                            .padding(.top, 2)
                        
                        Text("Nº Paginas")
                            .font(.title2)
                            .foregroundStyle(.brown)
                            .bold()
                            .padding(.top, 2
                            )
                        Text("Nuevo")
                        Text("219")
                        Text("Editorial")
                            .font(.title2)
                            .foregroundStyle(.brown)
                            .bold()
                            .padding(.top, 2)
                        Text("")
                        
                        
                        Text("SM")
                        
                    })
                    
                    Text("Filtros")
                        .font(.title2)
                        .foregroundStyle(.brown)
                        .bold()
                        .padding(.trailing, 250)
                        .padding(.top, 25)
                    
                    HStack{
                        ViewFotoPerfil()
                            .frame(width: 50)
                        ViewFotoPerfil()
                            .frame(width: 50)
                        ViewFotoPerfil()
                            .frame(width: 50)
                        ViewFotoPerfil()
                            .frame(width: 50)
                    }
                    
                    
                    HStack{
                        
                        NavigationLink("Intercambio", destination: MensajesView())
                            .padding(15)
                            .padding(.horizontal, 20)
                            .background(.brown)
                            .foregroundColor(.white)
                            .cornerRadius(30)
                            .padding([.leading, .trailing], 10)
                            .padding(.top, 20)
                            .navigationBarBackButtonHidden(true)
                        
                        NavigationLink("Escribir Reseña", destination: ReviewView())
                            .padding(15)
                            .background(Color.button)
                            .foregroundColor(.white)
                            .cornerRadius(30)
                            .padding([.leading, .trailing], 10)
                            .padding(.top, 20)
                            
                    }
                    
                    Spacer()
                }
            }
        }
        .navigationBarBackButtonHidden(false)
        //.tint(.brown)
    }
}

#Preview {
    DetalleLibro(book: Book(id: "7X6SRDD4_9sC", volumeInfo: VolumeInfo(title: "La invasión de Estados Unidos a Panamá", authors: ["Ricaurte Soler"], publisher: "Siglo XXI", description: "El 20 de diciembre de 1989 Panamá fue duramente bombardeada por las fuerzas aéreas estadunidenses e invadida por 24 000 infantes de Marina. En pocos días murieron cerca de 4 000 ciudadanos panameños entre civiles y militares. El presidente de la República fue secuestrado y se impuso un nuevo gobierno. En este libro, un destacado escritor panameño interpreta este acontecimiento.", industryIdentifiers: [], categories: ["History"], pageCount: 196, language: "es", imageLinks: ImageLinks(smallThumbnail: "http://books.google.com/books/content?id=7X6SRDD4_9sC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api", thumbnail: "http://books.google.com/books/content?id=7X6SRDD4_9sC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"))), bookmodelFav: BookModelFavoritos(id: "", book: Book(id: "7X6SRDD4_9sC", volumeInfo: VolumeInfo(title: "La invasión de Estados Unidos a Panamá", authors: ["Ricaurte Soler"], publisher: "Siglo XXI", description: "El 20 de diciembre de 1989 Panamá fue duramente bombardeada por las fuerzas aéreas estadunidenses e invadida por 24 000 infantes de Marina. En pocos días murieron cerca de 4 000 ciudadanos panameños entre civiles y militares. El presidente de la República fue secuestrado y se impuso un nuevo gobierno. En este libro, un destacado escritor panameño interpreta este acontecimiento.", industryIdentifiers: [], categories: ["History"], pageCount: 196, language: "es", imageLinks: ImageLinks(smallThumbnail: "http://books.google.com/books/content?id=7X6SRDD4_9sC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api", thumbnail: "http://books.google.com/books/content?id=7X6SRDD4_9sC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"))), isFavorite: false))
        .environmentObject(LibrosFavoritos())
}
