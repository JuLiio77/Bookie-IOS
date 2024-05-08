//
//  SubirLibroView.swift
//  BookieApp
//
//  Created by dam2 on 19/3/24.
//

import SwiftUI

struct SubirLibroView: View {
    
    //var fun = PeticionesSubirLibro()
    
    @State var titulo: String = ""
    @State var autor: String = ""
    @State var numeroPaginas: String = ""
    @State var genero: String = ""
    @State var editorial: String = ""
    @State var sinopsis: String = ""
    

    
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
                
                TextField("Nº de páginas", text: $numeroPaginas)
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
                
                Label("Editorial", systemImage: "")
                    .labelStyle(.titleOnly)
                    .padding(.top, 30)
                    .padding(.trailing, 280)
                
                TextField("Editorial", text: $editorial)
                    .bold()
                    .padding()
                    .background(Color.color)
                    .cornerRadius(30)
                    .padding([.leading, .trailing], 20)
                
                Label("Sinopsis", systemImage: "")
                    .labelStyle(.titleOnly)
                    .padding(.top, 30)
                    .padding(.trailing, 280)
                
                TextField("Sinopsis", text: $sinopsis)
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
                    
//                    ViewFotoPerfil()
//                        .frame(width: 50)
//                    ViewFotoPerfil()
//                        .frame(width: 50)
//                    ViewFotoPerfil()
//                        .frame(width: 50)
                    
                }
                .padding(.top, 20)
                
                Button("Subir libro", action: {
                    
                })
                
//                Button(action: {
////                    let libro = SubirLibroRequest(titulo: titulo, autor: autor, numeroPaginas: Int(numeroPaginas) ?? 0, editorial: editorial, sinopsis: sinopsis, genero: genero, foto: "")
//                    
//                
//                }
//                    .padding(20)
//                    .padding(.horizontal, 30)
//                    .background(Color.button)
//                    .foregroundColor(.black)
//                    .cornerRadius(20)
//                    .padding([.leading, .trailing], 10)
//                    .padding(.top, 30)
//                    
//                    Spacer()
                }
            }
        }
    }


#Preview {
    SubirLibroView()
}
