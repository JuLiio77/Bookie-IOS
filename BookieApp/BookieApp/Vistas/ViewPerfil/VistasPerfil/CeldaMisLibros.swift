//
//  CeldaMisLibros.swift
//  BookieApp
//
//  Created by dam2 on 23/4/24.
//

import SwiftUI

struct CeldaMisLibros: View {
    
    var libro: LibroUsuario
    
    var userId = ModelUser()
    
    var body: some View {
<<<<<<< HEAD
        
        VStack {
            
            //List($funcioneslibro.libros, id: \.libroId) { libro in
            
            Image(systemName: "")
                .frame(width: 166, height: 196)
                .foregroundColor(.blue)
                .background(Color.gray, in: .rect)
                .cornerRadius(20)
            
            Text("Harry Potter y la piedra filosofal")
                .padding(.trailing, 10)
                .font(.subheadline)
                .foregroundColor(.black)
            //.multilineTextAlignment(.trailing)
        }
        .padding([.top, .bottom], 20)
=======
        VStack{

                Image("historia")
                    .frame(width: 166, height: 196)
                    .foregroundColor(.blue)
                    .background(Color.gray, in: .rect)
                    .cornerRadius(20)
                
                Text(libro.titulo)
                    .padding(.trailing, 10)
                    .font(.subheadline)
                    .foregroundColor(.black)
                //.multilineTextAlignment(.trailing)
            }
            .padding([.top, .bottom], 20)
        
>>>>>>> julio
    }

}


#Preview {
    CeldaMisLibros(libro: LibroUsuario())
}
