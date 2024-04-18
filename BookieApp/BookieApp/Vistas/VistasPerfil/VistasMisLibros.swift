//
//  VistasMisLibros.swift
//  BookieApp
//
//  Created by dam2 on 9/4/24.
//

import SwiftUI

struct VistasMisLibros: View {
    @State var search = ""
    
    let columnas = [
        GridItem(.flexible(minimum: 50, maximum: 200), spacing: 0),
        GridItem(.flexible(minimum: 50, maximum: 200), spacing: 0)
    ]
    
    var body: some View {
        

        NavigationStack{
            
            Section{
                
//                Text("Mis Libros")
//                    .font(.title)
//                    .bold()
                
                ScrollView(.vertical){

                    LazyVGrid(columns: columnas, content: {
                        
                        NavigationLink(destination: LibroPropioDetallesView()){
                            CeldaMisLibros()
                        }
                        NavigationLink(destination: LibroPropioDetallesView()){
                            CeldaMisLibros()
                        }
                        NavigationLink(destination: LibroPropioDetallesView()){
                            CeldaMisLibros()
                        }
                        NavigationLink(destination: LibroPropioDetallesView()){
                            CeldaMisLibros()
                        }
                        NavigationLink(destination: LibroPropioDetallesView()){
                            CeldaMisLibros()
                        }
                        NavigationLink(destination: LibroPropioDetallesView()){
                            CeldaMisLibros()
                        }
                        NavigationLink(destination: LibroPropioDetallesView()){
                            CeldaMisLibros()
                        }
                        NavigationLink(destination: LibroPropioDetallesView()){
                            CeldaMisLibros()
                        }
                        
                    })
                }
            }
            
        }
        .searchable(text: $search)
    }
}

#Preview {
    VistasMisLibros()
}
