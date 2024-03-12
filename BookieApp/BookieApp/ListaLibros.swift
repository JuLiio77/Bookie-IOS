//
//  ListaLibros.swift
//  BookieApp
//
//  Created by dam2 on 11/3/24.
//

import SwiftUI

struct ListaLibros: View {
    
    @State var search = ""
    
    var body: some View {
        

        NavigationStack{
            
            
            List{
                Text("sdfsdg")
                Text("dfsdfsg")
            }
            
            
            
        }
        .searchable(text: $search)
        
        
    }
}

#Preview {
    ListaLibros()
}
