//
//  ViewMisLibros.swift
//  BookieApp
//
//  Created by dam2 on 23/4/24.
//

import SwiftUI

struct ViewMisLibros: View {
    
    @State var search = ""
    @StateObject var funcioneslibro = FuncionesPerfil()
    
    let columnas = [
        GridItem(.flexible(minimum: 50, maximum: 200), spacing: 0),
        GridItem(.flexible(minimum: 50, maximum: 200), spacing: 0)
    ]
    
    var body: some View {
        
        NavigationStack{
            
            Section {
                
<<<<<<< HEAD
                //                Text("Mis Libros")
                //                    .font(.title)
                //                    .bold()

                ScrollView(.vertical){
=======
                ScrollView(.vertical) {
>>>>>>> origin/letizia
                    
                    LazyVGrid(columns: columnas, content: {
                        
                        NavigationLink(destination: LibroPropioDetallesView()) {
                            CeldaMisLibros()
                        }
                        
                        NavigationLink(destination: LibroPropioDetallesView()) {
                            CeldaMisLibros()
                        }
                        
                        NavigationLink(destination: LibroPropioDetallesView()) {
                            CeldaMisLibros()
                        }
                        
                        NavigationLink(destination: LibroPropioDetallesView()) {
                            CeldaMisLibros()
                        }
                        
                        NavigationLink(destination: LibroPropioDetallesView()) {
                            CeldaMisLibros()
                        }
                        
                        NavigationLink(destination: LibroPropioDetallesView()) {
                            CeldaMisLibros()
                        }
                        
                        NavigationLink(destination: LibroPropioDetallesView()) {
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
    ViewMisLibros()
}
