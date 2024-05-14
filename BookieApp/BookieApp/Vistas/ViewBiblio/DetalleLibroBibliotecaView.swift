//
//  DetalleLibroBibliotecaView.swift
//  BookieApp
//
//  Created by dam2 on 9/4/24.
//

import SwiftUI

struct DetalleLibroBibliotecaView: View {
    
    @EnvironmentObject var librosFavoritos: LibrosFavoritos

    let columnas = [
        GridItem(.flexible(minimum: 60, maximum: 100), spacing: 60),
        GridItem(.adaptive(minimum: 60, maximum: 100), spacing: 60),
        GridItem(.flexible(minimum: 60, maximum: 100), spacing: 60)]
    
    var book: Book
    @ObservedObject var bookmodelFav: LibrosFavoritos
    
    //var bookmodelFav: BookModelFavoritos
        
    var body: some View {
        
        NavigationStack{
            
            ScrollView(.vertical){
                
                VStack{
                    
                    Label("Julio Vera", systemImage: "globe")
                        .padding(.leading, 230)
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
                        
//                        Button(action: {
//                            
//                            bookmodelFav.isFavorite.toggle
//                            
//                            /*librosFavoritos.actualizarFav(book: book, isFavorite: bookmodelFav.isFavorite)*/
//                            
//                            if bookmodelFav.isFavorite {
//                                librosFavoritos.anadirFav(book: book)
//                            } else {
//                                librosFavoritos.eliminarFav(book: book)
//                            }
//                        })
//                        {
//                            Image(systemName: bookmodelFav.isFavorite ? "heart.fill" : "heart")
//                                .foregroundColor(bookmodelFav.isFavorite ? .red : .black)
//                        }
//                      
//                            .foregroundStyle(.brown)
                        Text("Disponible")
                            .padding(.leading, 50)
                            .foregroundStyle(.cyan)
                    }
                    .padding(.top, 15)
                    
                    Divider()
                        .padding(.top, 15)
                    
                    
                    VStack(alignment: .leading) {
                        
                        Text("Titulo")
                            .font(.title3)
                            .bold()
                            .padding(.top, 10)
                        
                        Text(book.volumeInfo.title)
                            .padding(.top, 1)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    
                    VStack(alignment: .leading) {
                        Text("Autor")
                            .font(.title3)
                            .bold()
                            .padding(.top, 20)
                        
                        Text(book.volumeInfo.authors.joined(separator: ", "))
                            .padding(.top, 1)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    VStack(alignment: .leading) {
                        
                        Text("Descripción")
                            .font(.title3)
                            .bold()
                            .padding(.top, 20)
                        
                        Text(book.volumeInfo.description)
                            .padding(.top, 1)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    
                    VStack(alignment: .leading) {
                        
                        Text("Páginas")
                            .font(.title3)
                            .bold()
                            .padding(.top, 20)
                        
                        Text(String(book.volumeInfo.pageCount ?? 0))
                            .padding(.top, 1)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    
                    VStack(alignment: .leading) {
                        Text("Idioma")
                            .font(.title3)
                            .bold()
                            .padding(.top, 20)
                        
                        Text(String(book.volumeInfo.language ?? "Desconocido"))
                            .padding(.top, 1)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    VStack(alignment: .leading) {
                        
                        Text("Categoria")
                            .font(.title3)
                            .bold()
                            .padding(.top, 20)
                        
                        Text(book.volumeInfo.categories?.joined(separator: ", ") ?? "Desconocido")
                            .padding(.top, 1)
                            .padding(.bottom, 5)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                }
                .padding(.horizontal, 30)
                //.frame(maxWidth: .infinity)
            }
        }
    }
}

#Preview {
    DetalleLibro()
        .environmentObject(LibrosFavoritos())
}
