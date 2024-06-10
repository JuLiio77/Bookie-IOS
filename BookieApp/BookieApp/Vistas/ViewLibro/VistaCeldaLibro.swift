//
//  VistaCeldaLibro.swift
//  BookieApp
//
//  Created by dam2 on 11/3/24.
//

import SwiftUI

struct VistaCeldaLibro: View {
<<<<<<< HEAD
    
<<<<<<< HEAD
<<<<<<< HEAD
=======
    var funcionLibro = FuncionesLibro()
    
>>>>>>> jose
=======
    var funcionLibro = FuncionesLibro()
    
>>>>>>> letizia
    var body: some View {
        
        VStack {
            
            Image("misterio")
                .frame(width: 166, height: 196)
                .foregroundColor(.blue)
                .background(Color.gray, in: .rect)
                .cornerRadius(20)
            
            Text("afadf")
                .frame(width: 165)
            //.padding(.trailing, 10)
                .font(.subheadline)
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
        }
        .padding([.top, .bottom], 20)
    }
=======
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


>>>>>>> julio
}
    


#Preview {
    VistaCeldaLibro(libro: Libros(id: 1, title: "Cien años de soledad", author: "Gabriel García Márquez", publisher: "Editorial Sudamericana", pages: 471, genre: "Realismo mágico", synopsis: "La historia de la familia Buendía en el pueblo ficticio de Macondo.", user: "María"))
}


