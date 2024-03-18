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
                .background(Color.color.opacity(0.5))
                .cornerRadius(20)
            
         
        
                Image(systemName: "")
                    .frame(width: 114, height: 122)
                    .background(Color.gray)
                    .cornerRadius(20)
                    .padding(.trailing, 200)
            
          
                VStack(alignment: .leading){
                    
                    Text("La chica desaparecida")
                        .bold()
                        .padding(.leading, 90)
                        .padding(.trailing, 10)
                        .lineLimit(2, reservesSpace: false)
                        .font(.callout)
                    
                    Text("Autor")
                        .padding(.leading, 90)
                        .padding(.trailing, 10)
                        .lineLimit(2, reservesSpace: false)
                        .font(.caption)
                    
                    Button("Ver mas"){
                        
                    }
                    .frame(width: 130, height: 25)
                    .background(Color.button)
                    .cornerRadius(20)
                    .padding(.leading, 150)
                    .foregroundColor(.black)
                    .font(.caption)
                    .padding(.top, 18)
                    
                    
                    
                    
                }
                .padding(.leading, 50)
                .frame(width: 350)

            
                
        }
    }
}

#Preview {
    CeldaBibloteca()
}
