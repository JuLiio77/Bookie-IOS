//
//  CeldaMisLibros.swift
//  BookieApp
//
//  Created by dam2 on 23/4/24.
//

import SwiftUI

struct CeldaMisLibros: View {
    
    @StateObject var funcioneslibro = FuncionesPerfil()
    
    var body: some View {
        VStack{
            
            
            List(funcioneslibro.libros, id: \.id){ libro in
                
                Image(systemName: libro.foto)
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
        }
    }
}
#Preview {
    CeldaMisLibros()
}
