//
//  CeldaBibloteca.swift
//  BookieApp
//
//  Created by dam2 on 14/3/24.
//

import SwiftUI

struct CeldaBibloteca: View {
    var body: some View {
        ZStack{
            Image(systemName: "")
                .frame(width: 350, height: 150)
                .background(Color.color.opacity(0.7))
                .cornerRadius(20)
            
         
        
                Image(systemName: "")
                    .frame(width: 114, height: 122)
                    .background(Color.gray)
                    .cornerRadius(20)
                    .padding(.trailing, 200)
            
          
                VStack(alignment: .leading){
                    
                    Text("La chica desaparecidas")
                        .bold()
                        .padding(.leading, 90)
                        .padding(.trailing, 10)
                        .lineLimit(2, reservesSpace: false)
                    
                    Text("Autor")
                        .padding(.leading, 90)
                        .padding(.trailing, 10)
                        .lineLimit(2, reservesSpace: false)
                    Button("Ver mas"){
                        
                    }
                    .frame(width: 120, height: 40)
                    .background(Color.button)
                    .cornerRadius(20)
                    .padding(.leading, 100)
                    .foregroundColor(.black)
                    
                    
                    
                }
                .padding(.leading, 50)
                .frame(width: 350)

            
                
        }
    }
}

#Preview {
    CeldaBibloteca()
}
