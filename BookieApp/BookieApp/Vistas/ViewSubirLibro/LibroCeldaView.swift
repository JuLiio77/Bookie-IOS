//
//  LibroCeldaView.swift
//  BookieApp
//
//  Created by dam2 on 30/5/24.
//

import SwiftUI

import SwiftUI

struct LibroCeldaView: View {
    var libro: Libro
    
    var body: some View {
        HStack {
            Image(systemName: "book.fill")
                .resizable()
                .frame(width: 50, height: 50)
                .foregroundColor(.blue)
            
            VStack(alignment: .leading) {
                Text(libro.titulo)
                    .font(.headline)
                Text(libro.autor)
                    .font(.subheadline)
                Text("\(libro.numeroPaginas) páginas")
                    .font(.subheadline)
            }
        }
    }
}

#Preview {
    LibroCeldaView(libro: Libro(libroId: 1, titulo: "titulo", autor: "autor", numeroPaginas: 554, sinopsis: "sinopsis", editorial: "editorial", genero: "genero", foto: "", prestado: false, filtro: [1], usuario: "pepe", userId: 1))
}
