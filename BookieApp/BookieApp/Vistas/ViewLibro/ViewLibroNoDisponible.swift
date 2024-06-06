//
//  ViewLibroNoDisponible.swift
//  BookieApp
//
//  Created by dam2 on 23/4/24.
//

import SwiftUI

struct ViewLibroNoDisponible: View {
    
    let columnas = [
        GridItem(.flexible(minimum: 60, maximum: 100), spacing: 60),
        GridItem(.adaptive(minimum: 60, maximum: 100), spacing: 60),
        GridItem(.flexible(minimum: 60, maximum: 100), spacing: 60)
    ]
        
    var body: some View {
        
        NavigationStack {
            
            ScrollView(.vertical) {
                
                VStack {
                    
//                    NavigationLink(destination: ViewPerfilAjeno()) {
//                        Label( "Iñigo", systemImage: "person.circle.fill")
//                             .padding(.leading, 250)
//                             .padding([.top, .bottom], 15)
//                             .foregroundColor(.black)
//                     }
                    
                    Image(systemName: "globe")
                        .frame(width: 166, height: 196)
                        .foregroundColor(.blue)
                        .background(Color.gray, in: .rect)
                        .cornerRadius(20)
                        .padding(.top, 20)
                    
                    VStack {
               
                        Text("¿Has recibido tu libro de vuelta?")
                            .foregroundStyle(.cyan)
                        
                        NavigationLink("Finalizar Intercambio", destination: MensajesView())
                           .padding(15)
                           .padding(.horizontal, 20)
                           .background(.button)
                           .foregroundColor(.white)
                           .cornerRadius(30)
                           .padding([.leading, .trailing], 10)
                           .padding(.top, 10)
                           .navigationBarBackButtonHidden(true)
                    }
                    
                    ZStack {
                        
                        Rectangle()
                            .frame(height: 80)
                            .foregroundStyle(Color.button)
                            .opacity(0.3)
                        
                        Text("Titulo")
                            .font(.title2)
                            .foregroundStyle(.brown)
                            .bold()
                            .padding(.bottom, 30)
                            .padding(.trailing, 270)
                        
                        Text("El conde de MonteCristo")
                            .padding(.top, 20)
                            .padding(.trailing, 150)
                    }
                    .padding([.top,.bottom], 15)
                    
                    LazyVGrid(columns: [GridItem(.flexible(minimum: 140, maximum: 220), spacing: 100),
                                        GridItem(.adaptive(minimum: 140, maximum: 250), spacing: 100)], content: {
                        
                        Text("Autor")
                            .font(.title2)
                            .foregroundStyle(.brown)
                            .bold()
                        
                        Text("Genero")
                            .font(.title2)
                            .foregroundStyle(.brown)
                            .bold()
                        
                        Text("Alexandre Duque")
                        
                        Text("Terror")
                        
                        Text("Estado")
                            .font(.title2)
                            .foregroundStyle(.brown)
                            .bold()
                            .padding(.top, 2)
                        
                        Text("Nº Paginas")
                            .font(.title2)
                            .foregroundStyle(.brown)
                            .bold()
                            .padding(.top, 2)
                        
                        Text("Nuevo")
                        
                        Text("219")
                        
                        Text("Editorial")
                            .font(.title2)
                            .foregroundStyle(.brown)
                            .bold()
                            .padding(.top, 2)
                        
                        Text("")
                        
                        Text("SM")
                    })
                    
                    Text("Filtros")
                        .font(.title2)
                        .foregroundStyle(.brown)
                        .bold()
                        .padding(.trailing, 250)
                        .padding(.top, 25)
                       
                    HStack {
                        
                        ViewFotoPerfil()
                            .frame(width: 50)
                        
                        ViewFotoPerfil()
                            .frame(width: 50)
                        
                        ViewFotoPerfil()
                            .frame(width: 50)
                        
                        ViewFotoPerfil()
                            .frame(width: 50)
                    }
                    
//                    HStack{
//
//                        NavigationLink("Intercambio", destination: MensajesView())
//                            .padding(15)
//                            .padding(.horizontal, 20)
//                            .background(.brown)
//                            .foregroundColor(.white)
//                            .cornerRadius(30)
//                            .padding([.leading, .trailing], 10)
//                            .padding(.top, 20)
//                            .navigationBarBackButtonHidden(true)
//
//                        NavigationLink("Escribir Reseña", destination: ReviewView())
//                            .padding(15)
//                            .background(Color.button)
//                            .foregroundColor(.white)
//                            .cornerRadius(30)
//                            .padding([.leading, .trailing], 10)
//                            .padding(.top, 20)
//                            .navigationBarBackButtonHidden(true)
//                    }

                    Spacer()
                }
            }
        }
    }
}

#Preview {
    ViewLibroNoDisponible()
}
