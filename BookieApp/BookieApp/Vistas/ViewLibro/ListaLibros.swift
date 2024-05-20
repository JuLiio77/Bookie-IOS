//
//  ListaLibros.swift
//  BookieApp
//
//  Created by dam2 on 11/3/24.
//

import SwiftUI

struct ListaLibros: View {

    @State var search = ""
    @StateObject var bookModel = BookModel()
    
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
                
                ScrollView(.vertical) {

                    LazyVGrid(columns: columnas, content: {
                        
                        ForEach(searchResults, id: \.id) { book in
                            
                            NavigationLink(destination: DetalleLibro(book: book, bookmodelFav: BookModelFavoritos(id: "", book: book, isFavorite: false))) {
                                VistaCeldaLibro()
                            }
                        }
                    })
                }
            }     
            .onAppear {                
                bookModel.onAppear()
            }
        }
        .searchable(text: $search, prompt: "Buscar libro")
    }
    
    var searchResults: [Book] {
        
        if search.isEmpty {
            return bookModel.libros
        } else {
            return bookModel.libros.filter {
                $0.volumeInfo.title.localizedCaseInsensitiveContains(search)
            }
        }
    }
}

#Preview {
    ListaLibros(categoria: "Romance")
        .environmentObject(LibrosFavoritos())
}
