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
    LibroCeldaView(libro: Libro(id: 1, titulo: "Ejemplo", autor: "Autor", numeroPaginas: 100, sinopsis: "Sinopsis", editorial: "Editorial", genero: "Género", foto: "", prestado: false, filtro: [1], usuario: ModelUser2(id: 1)))
}
