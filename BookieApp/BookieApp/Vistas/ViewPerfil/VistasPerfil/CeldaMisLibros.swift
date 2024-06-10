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
        VStack{

                Image("portadaLibro")
                    .frame(width: 160, height: 170)
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
#Preview {

    CeldaMisLibros(libro: LibroUsuario())
}
