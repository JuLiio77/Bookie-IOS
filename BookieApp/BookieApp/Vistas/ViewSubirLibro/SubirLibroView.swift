//
//  SubirLibroView.swift
//  BookieApp
//
//  Created by dam2 on 19/3/24.
//

import SwiftUI

struct SubirLibroView: View {
    @State var titulo: String = ""
    @State var autor: String = ""
    @State var paginas: String = ""
    @State var genero: String = ""

    
    var body: some View {
        VStack{
            ScrollView{
                Text("Detalles del libro")
                
                Image(systemName: "")
                    .frame(width: 166, height: 196)
                    .foregroundColor(.blue)
                    .background(Color.gray, in: .rect)
                    .cornerRadius(20)
                
                Label("Título", systemImage: "")
                    .labelStyle(.titleOnly)
                    .padding(.top, 60)
                    .padding(.trailing, 280)
                
                TextField("Título", text: $titulo)
                    .bold()
                    .padding()
                    .background(Color.color)
                    .cornerRadius(30)
                    .padding([.leading, .trailing], 20)
                
                Label("Autor", systemImage: "")
                    .labelStyle(.titleOnly)
                    .padding(.top, 30)
                    .padding(.trailing, 280)
                
                TextField("Autor", text: $autor)
                    .bold()
                    .padding()
                    .background(Color.color)
                    .cornerRadius(30)
                    .padding([.leading, .trailing], 20)
                
                
                Label("Nº de páginas", systemImage: "")
                    .labelStyle(.titleOnly)
                    .padding(.top, 30)
                    .padding(.trailing, 220)
                
                TextField("Nº de páginas", text: $paginas)
                    .bold()
                    .padding()
                    .background(Color.color)
                    .cornerRadius(30)
                    .padding([.leading, .trailing], 20)
                
                Label("Género", systemImage: "")
                    .labelStyle(.titleOnly)
                    .padding(.top, 30)
                    .padding(.trailing, 280)
                
                TextField("Género", text: $genero)
                    .bold()
                    .padding()
                    .background(Color.color)
                    .cornerRadius(30)
                    .padding([.leading, .trailing], 20)
                
                HStack{
                    
                    Label("Agregar filtos", systemImage: "")
                        .labelStyle(.titleOnly)
                    
                    Button(action: {
                        //accion
                    }) {
                        Image(systemName: "plus.app.fill")
                            .foregroundColor(.red)
                    }
                    
                }
                .padding(.top, 30)
                .padding(.trailing, 200)
                
                Divider()
                
                .padding(.top, 10)

                HStack{
                   
                    ViewFotoPerfil()
                        .frame(width: 50)
                    ViewFotoPerfil()
                        .frame(width: 50)
                    ViewFotoPerfil()
                        .frame(width: 50)
                    
                }
                .padding(.top, 20)
                
               Button("Siguiente"){
                   
               }
               .padding(20)
               .padding(.horizontal, 30)
               .background(Color.button)
               .foregroundColor(.black)
               .cornerRadius(20)
               .padding([.leading, .trailing], 10)
               .padding(.top, 30)
                       
                Spacer()
            }
        }
    }
}


#Preview {
    SubirLibroView()
}
