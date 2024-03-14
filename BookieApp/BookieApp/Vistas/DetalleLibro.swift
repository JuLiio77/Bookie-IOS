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
                    .padding(.top, 15)
                    
                    HStack{
                        Image(systemName: "globe")
                            .frame(width: 207, height: 251)
                            .background(Color.gray, in: .rect)
                            .cornerRadius(20)
                        
                        Image(systemName: "heart")
                            .imageScale(.large)
                            .padding(.top, 220)
                            .padding(.trailing, 70)
                            .frame(width: 50, height: 50)
                            .padding(.leading, 20)
                    }
                    .padding(.leading, 75)
                    .padding(.top, 20)
                    
                    Text("Nº de Paginas")
                        .padding(.leading, 250)
                        .padding(.top, 20)
                        .bold()
                    Text("259")
                        .padding(.leading, 250)
                    
                    Text("Titulo")
                        .font(.title3)
                        .padding(.trailing, 300)
                        .bold()
                    Text("EL conde de no se que")
                        .padding(.trailing, 170)
                    
                    Text("Autor")
                        .font(.title3)
                        .padding(.trailing, 300)
                        .padding(.top, 3)
                        .bold()
                    Text("Akexandre Duque")
                        .padding(.leading, 30)
                        .padding(.trailing, 220)
                        
                    Text("Género")
                        .font(.title3)
                        .padding(.top, 3)
                        .padding(.trailing, 285)
                        .bold()
                    Text("Aventura")
                        .padding(.trailing, 270)
                    
                    
                    Divider()
                    
                    Text("Filtros")
                        .font(.title3)
                        .padding(.trailing, 290)
                        .bold()

                    
                    HStack{
                        ViewFiltros()
                            .padding([.leading, .trailing], 10)
                        ViewFiltros()
                            .padding([.leading, .trailing], 10)
                        ViewFiltros()
                            .padding([.leading, .trailing], 10)
                        ViewFiltros()
                            .padding([.leading, .trailing], 10)
                    }
                    
                    Text("Editorial")
                        .font(.title3)
                        .padding(.trailing, 270)
                        .padding(.top, 30)
                        .bold()
                    Text("una editorial")
                        .padding(.trailing, 250)
                    
                    HStack{
                        Button("Intercambio"){}
                        Button("Escribir reseña"){}
                            .padding(.leading, 40)
                    }
                    .padding(.top, 20)
                }
                
            }
        }
    }
}

#Preview {
    DetalleLibro()
}
