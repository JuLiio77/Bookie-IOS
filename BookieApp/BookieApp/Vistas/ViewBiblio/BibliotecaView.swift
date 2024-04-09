//
//  BibliotecaView.swift
//  BookieApp
//
//  Created by dam2 on 14/3/24.
//

import SwiftUI

struct BibliotecaView: View {
    @State var search = ""
    let mensajes = ["Mensaje 1", "Mensaje 2", "Mensaje 3", "Mensaje 4", "Mensaje 5"]
    @StateObject var bookmodel = BookModel()


    var body: some View {
        NavigationStack{
            ScrollView{
                VStack {
                    Text("Busca datos sobre libros en la biblioteca")
                        .bold()
                        .padding()
                    
                    
                    ForEach(bookmodel.libros,id: \.id){ libro in
                        CeldaBibloteca(book: libro)
                            .padding(.bottom, 12)
                    }
                }
            }
//            .navigationTitle("Biblioteca")
//            .navigationBarTitleDisplayMode(.inline)
        }
        
        .searchable(text: $search)
     
    }
    
}

#Preview {
    BibliotecaView()
}
