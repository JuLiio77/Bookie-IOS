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
                    
                    Text("La chica desaparecida")
                        .bold()
                        .padding(.leading, 80)
         
                    
                    Text("Autor")
                        .padding(.leading, 80)
                    
                    Button("Ver mas"){
                        
                    }
                    .frame(width: 120, height: 40)
                    .background(Color.button)
                    .cornerRadius(20)
                    .padding(.leading, 100)
                    .foregroundColor(.black)
                    
                    
                    
                }
            
                .frame(width: 350, height: 40)

            
                
        }
    }
}

#Preview {
    CeldaBibloteca()
}
