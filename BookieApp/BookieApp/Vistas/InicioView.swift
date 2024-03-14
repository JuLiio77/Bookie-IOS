//
//  InicioView.swift
//  BookieApp
//
//  Created by dam2 on 11/3/24.
//

import SwiftUI

struct InicioView: View {
    
    @State var nombre: String = ""
    
    var body: some View {
        
        ScrollView{
            VStack{
                
                
                Text("¡Bienvenido \(nombre)!")
                    .bold()
                    .font(.title)
                Text("Descubre a tu bookie favorita")
                
                Image(systemName: "star")
                    .frame(width: 353, height: 100)
                    .background(Color.gray)
                    .cornerRadius(20)
                
                HStack{
                    
                    VStack{
                        
                        
                        Image(systemName: "star")
                            .frame(width: 167, height: 196)
                            .background(Color.gray)
                            .cornerRadius(20)
                            .padding(.bottom, 200)
                        
                        
                        
                        
                        
                        Image(systemName: "star")
                            .frame(width: 166, height: 100)
                            .background(Color.gray)
                            .cornerRadius(20)
                            .padding(.bottom, 295)
                        
                        
                        
                    }
                    
                    VStack{
                        
                        
                        Image(systemName: "star")
                            .frame(width: 167, height: 196)
                            .background(Color.gray)
                            .cornerRadius(20)
                            .padding(.bottom, 200)
                        
                        
                        
                        
                        
                        Image(systemName: "star")
                            .frame(width: 166, height: 100)
                            .background(Color.gray)
                            .cornerRadius(20)
                            .padding(.bottom, 295)
                        
                        
                        
                    }
                    
                }
                
                
                
                
            }
        }
            
            Spacer()
        }
    }


#Preview {
    InicioView()
}
