//
//  DetalleLibro.swift
//  BookieApp
//
//  Created by dam2 on 12/3/24.
//

import SwiftUI

struct DetalleLibro: View {
    var body: some View {
        
        NavigationStack{
            
            ScrollView(.vertical){
                
                VStack{
                    
                    HStack{
                        Spacer()
                        Image(systemName: "globe")
                        Text("usuario")
                        Text("Disponible")
                            .padding(.leading, 70)
                            .padding(.trailing, 10)
                    }
                    
                    Image(systemName: "globe")
                        .frame(width: 166, height: 196)
                        .foregroundColor(.blue)
                        .background(Color.gray, in: .rect)
                        .cornerRadius(20)
                    
                    
                    
                    Spacer()
                }
                
            }
        }
    }
}

#Preview {
    DetalleLibro()
}
