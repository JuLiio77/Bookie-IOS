//
//  ListaLibros.swift
//  BookieApp
//
//  Created by dam2 on 11/3/24.
//

import SwiftUI

struct ListaLibros: View {

    @State var search = ""
    @StateObject private var dataLibro = LibroData()
  
    
    var categoria: String
    
    let columnas = [
        GridItem(.flexible(minimum: 50, maximum: 200), spacing: 0),
        GridItem(.flexible(minimum: 50, maximum: 200), spacing: 0)
    ]
    
    var body: some View {        

        NavigationStack {
            
            Section {
                
                Text(categoria)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 22)
                    .padding([.top, .bottom], 4)
                
                ScrollView(.vertical) {

                    LazyVGrid(columns: columnas, content: {
                        
                        ForEach(dataLibro.libros, id: \.id ) { libro in
                            
                                VistaCeldaLibro(libro: libro)
                         
                            }
                        VistaCeldaLibro(libro: Libros(id: 1, title: "Cien años de soledad", author: "Gabriel García Márquez", publisher: "Editorial Sudamericana", pages: 471, genre: "Realismo mágico", synopsis: "La historia de la familia Buendía en el pueblo ficticio de Macondo.", user: "María"))
                        
                           
                                
                            
                        }
                    
                )}
                
            }
            .onAppear{
                dataLibro.load()
            }
        }
        .searchable(text: $search, prompt: "Buscar libro")
    }
    
    var searchResults: [Libros] {
        
        if search.isEmpty {
            return dataLibro.libros
        } else {
            return dataLibro.libros.filter {
                $0.title.localizedCaseInsensitiveContains(search)
            }
        }
    }
}

#Preview {
    ListaLibros(categoria: "Romance")
        .environmentObject(LibroData())
}
