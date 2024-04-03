//
//  ListaLibros.swift
//  BookieApp
//
//  Created by dam2 on 11/3/24.
//

import SwiftUI

struct ListaLibros: View {
    

    @State var search = ""
<<<<<<< Updated upstream:BookieApp/BookieApp/Vistas/ListaLibros.swift
=======
    var categoria: String
    
>>>>>>> Stashed changes:BookieApp/BookieApp/Vistas/ViewLibro/ListaLibros.swift
    let columnas = [
        GridItem(.flexible(minimum: 50, maximum: 200), spacing: 0),
        GridItem(.flexible(minimum: 50, maximum: 200), spacing: 0)
    ]
    

    
    var body: some View {
        

        NavigationStack {
            
            Section{
                
<<<<<<< Updated upstream:BookieApp/BookieApp/Vistas/ListaLibros.swift
                Text("Categoria")
=======
                Text(categoria)
>>>>>>> Stashed changes:BookieApp/BookieApp/Vistas/ViewLibro/ListaLibros.swift
                    .padding(.trailing, 280)
                    .padding([.top, .bottom], 5)
                
                ScrollView(.vertical){

                    LazyVGrid(columns: columnas, content: {
                        
                        NavigationLink(destination: DetalleLibro()){
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
}
