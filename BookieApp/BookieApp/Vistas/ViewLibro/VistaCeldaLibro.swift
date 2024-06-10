//
//  VistaCeldaLibro.swift
//  BookieApp
//
//  Created by dam2 on 11/3/24.
//

import SwiftUI

struct VistaCeldaLibro: View {
  //  @StateObject private var dataLibro = LibroData()
    var libro: Libros
    @State private var isExpanded = false
    var body: some View {

            VStack{
       
                Image("misterio")
                    .frame(width: 166, height: 196)
                    .foregroundColor(.blue)
                    .background(Color.gray, in: .rect)
                    .cornerRadius(20)
                
                Text(libro.title)
                   .frame(width: 165)
                   .font(.subheadline)
                   .foregroundColor(.black)
                   .multilineTextAlignment(.center)
            
        }
        .padding()
    }


}
    


#Preview {
    VistaCeldaLibro(libro: Libros(id: 1, title: "Cien años de soledad", author: "Gabriel García Márquez", publisher: "Editorial Sudamericana", pages: 471, genre: "Realismo mágico", synopsis: "La historia de la familia Buendía en el pueblo ficticio de Macondo.", user: "María"))
}


