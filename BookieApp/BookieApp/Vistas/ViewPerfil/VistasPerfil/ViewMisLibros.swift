//
//  ViewMisLibros.swift
//  BookieApp
//
//  Created by dam2 on 23/4/24.
//

import SwiftUI

struct ViewMisLibros: View {
    
    @State var search = ""
<<<<<<< HEAD
=======
    @ObservedObject var funcionesLibro = FuncionesPerfil()
    var infoUser = ModelUser()
>>>>>>> julio
    
    let columnas = [
        GridItem(.flexible(minimum: 50, maximum: 200), spacing: 0),
        GridItem(.flexible(minimum: 50, maximum: 200), spacing: 0)
    ]
    
    var body: some View {
        
        NavigationStack{
            
<<<<<<< HEAD
            Section {
                
                ScrollView(.vertical) {
                    
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
=======
            List{
                ForEach(funcionesLibro.arrayLibros, id: \.libroId){ libro in
                    
                    NavigationLink(destination: LibroPropioDetallesView(libro: libro)){
                        CeldaMisLibros(libro: libro)
                    }
>>>>>>> julio
                }
                
            }
        }
        .searchable(text: $search)
        
    }
}

#Preview {
    ViewMisLibros()
}
