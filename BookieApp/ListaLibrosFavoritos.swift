//
//  ListaLibrosFavoritos.swift
//  BookieApp
//
//  Created by dam2 on 10/4/24.
//

import SwiftUI

struct ListaLibrosFavoritos: View {
            
    let columnas = [
        GridItem(.flexible(minimum: 50, maximum: 200), spacing: 0),
        GridItem(.flexible(minimum: 50, maximum: 200), spacing: 0)]
    
    @EnvironmentObject var librosFavoritos: LibrosFavoritos    
    
    var body: some View {
        
        NavigationStack{
            
            Section {
                
                //Text("Favoritos")
                    //.padding(.trailing, 280)
                    //.padding([.top, .bottom], 5)
                
                ScrollView(.vertical) {
                    
                    LazyVGrid(columns: columnas) {
                        
                        ForEach(librosFavoritos.librosFav) { bookmodelFav in
                            
                            if let book = bookmodelFav.book {
                                
                                NavigationLink(destination: DetalleLibroBibliotecaView(book: book, bookmodelFav: bookmodelFav)) {
                                    CeldaLibroFavorito(book: book)
                                }
                            }
                        }
                    }
                }
            }
            .navigationTitle("Favoritos")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

#Preview {
    ListaLibrosFavoritos()
        .environmentObject(LibrosFavoritos())
}
