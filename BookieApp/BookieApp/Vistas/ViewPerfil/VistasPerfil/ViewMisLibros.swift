//
//  ViewMisLibros.swift
//  BookieApp
//
//  Created by dam2 on 23/4/24.
//

import SwiftUI

struct ViewMisLibros: View {
    
    @State var search = ""
    @ObservedObject var funcionesLibro = FuncionesLibro()
    var infoUser = ModelUser()
    
    let columnas = [
        GridItem(.flexible(minimum: 50, maximum: 200), spacing: 0),
        GridItem(.flexible(minimum: 50, maximum: 200), spacing: 0)
    ]
    
    var body: some View {
        
        NavigationStack{
            
            List{
                ForEach(funcionesLibro.arrayLibros, id: \.libroId){ libro in
                    
                    NavigationLink(destination: LibroPropioDetallesView(libro: libro)){
                        CeldaMisLibros(libro: libro)
                    }
                }
                
            }
        }
        .searchable(text: $search)

    }
}
#Preview {
    ViewMisLibros(funcionesLibro: FuncionesLibro())
}
