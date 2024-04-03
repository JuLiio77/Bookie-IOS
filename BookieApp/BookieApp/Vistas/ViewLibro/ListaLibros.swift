//
//  ListaLibros.swift
//  BookieApp
//
//  Created by dam2 on 11/3/24.
//

import SwiftUI

struct ListaLibros: View {

    @State var search = ""
    
    let columnas = [
        GridItem(.flexible(minimum: 50, maximum: 200), spacing: 0),
        GridItem(.flexible(minimum: 50, maximum: 200), spacing: 0)
    ]
    
    var body: some View {
        

        NavigationStack{
            
            Section{
                
                Text("Romance")
                    .padding(.trailing, 280)
                    .padding([.top, .bottom], 5)
                
                ScrollView(.vertical){

                    LazyVGrid(columns: columnas, content: {
                        
                        NavigationLink(destination: DetalleLibro()){
                            VistaCeldaLibro()
                        }
                        NavigationLink(destination: DetalleLibro()){
                            VistaCeldaLibro()
                        }
                        NavigationLink(destination: DetalleLibro()){
                            VistaCeldaLibro()
                        }
                        NavigationLink(destination: DetalleLibro()){
                            VistaCeldaLibro()
                        }
                        NavigationLink(destination: DetalleLibro()){
                            VistaCeldaLibro()
                        }
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
    ListaLibros()
}
