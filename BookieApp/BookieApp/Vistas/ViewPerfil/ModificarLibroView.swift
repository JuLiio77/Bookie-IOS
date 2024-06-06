//
//  ModificarLibroView.swift
//  BookieApp
//
//  Created by dam2 on 23/4/24.
//

import SwiftUI

struct ModificarLibroView: View {
    
    @State var modificarLibro = false
    @State var titulo = ""
    @State var autor = ""
    @State var paginas = ""
    @State var genero = ""
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    let columnas = [
        GridItem(.flexible(minimum: 60, maximum: 100), spacing: 60),
        GridItem(.adaptive(minimum: 60, maximum: 100), spacing: 60),
        GridItem(.flexible(minimum: 60, maximum: 100), spacing: 60)
    ]
        
    var body: some View {
        
        NavigationStack {
            
            ScrollView() {
                
                VStack {
                    
                    Image(systemName: "")
                        .frame(width: 166, height: 196)
                        .foregroundColor(.blue)
                        .background(Color.gray, in: .rect)
                        .cornerRadius(20)
                        .padding(.top, 30)
                    
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
                                        
                    Text("Filtros")
                        .labelStyle(.titleOnly)
                        .padding(.top, 30)
                        .padding(.trailing, 290)
                    
                    Divider()
                    
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
                    
                    HStack {
                        
                        Button("Modificar") {
                            modificarLibro = true
                        }
                        .alert(isPresented: $modificarLibro) {
                            Alert(
                                title: Text("Modificar Libro"),
                                message: Text("¿Estas seguro de que quieres modificar este libro?"),
                                primaryButton: .default(Text("Sí")) {
                                    // Aquí puedes poner el código para guardar los cambios
                                    self.presentationMode.wrappedValue.dismiss()
                                },
                                secondaryButton: .cancel(Text("No"))
                            )
                        }
                        .padding(15)
                        .padding(.horizontal, 20)
                        .background(.button)
                        .foregroundColor(.white)
                        .cornerRadius(30)
                        .padding([.leading, .trailing], 10)
                        .padding(.top, 20)
                        .navigationBarBackButtonHidden(true)
                    }
                    
                    Spacer()
                }                
                .navigationBarTitle("Detalles Libro")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

#Preview {
    ModificarLibroView()
}
