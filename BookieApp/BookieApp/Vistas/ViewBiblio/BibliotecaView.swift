//
//  BibliotecaView.swift
//  BookieApp
//
//  Created by dam2 on 14/3/24.
//

import SwiftUI

struct BibliotecaView: View {
    
    @StateObject var bookModel = BookModel()
    @State var search = ""
    
    let mensajes = ["Mensaje 1", "Mensaje 2", "Mensaje 3",
                    "Mensaje 4", "Mensaje 5"]
    
    var body: some View {
        
        NavigationStack {
            
            ScrollView {
                
                VStack {
                    
                    Text("Busca datos sobre libros en la biblioteca")
                        .bold()
                        .padding()
                    
                    ForEach(bookModel.libros, id: \.id) { libro in
                        CeldaBibloteca(book: libro)
                            .padding(.bottom, 12)
                    }
                }
            }
        }
        .onAppear {
            bookModel.onAppear()
        }
        //.searchable(text: $bookModel.search)
        .searchable(text: $search)
    }
}

#Preview {
    BibliotecaView()
        .environmentObject(LibrosFavoritos())
}
