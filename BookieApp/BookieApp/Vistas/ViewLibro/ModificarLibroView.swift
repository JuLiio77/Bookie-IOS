//
//  ModificarLibroView.swift
//  BookieApp
//
//  Created by dam2 on 18/4/24.
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
        
        NavigationStack{
            
            ScrollView(){
                
                VStack{
                   
                    
                    Image(systemName: "globe")
                        .frame(width: 166, height: 196)
                        .foregroundColor(.blue)
                        .background(Color.gray, in: .rect)
                        .cornerRadius(20)
                        .padding(.top, 30)
                  
                    
                
                    Label("Nombre", systemImage: "")
                        .labelStyle(.titleOnly)
                        .padding(.top, 30)
                        .padding(.trailing, 280)
                    TextField("Nombre", text: $titulo)
                        .bold()
                        .padding()
                        .background(Color.color)
                        .cornerRadius(30)
                        .padding()
                    
                    Label("Contraseña", systemImage: "")
                        .labelStyle(.titleOnly)
                        .padding(.top, 30)
                        .padding(.trailing, 260)
                    TextField("Contraseña", text: $autor)
                        .bold()
                        .padding()
                        .background(Color.color)
                        .cornerRadius(30)
                        .padding()
                    
                    
                    Label("Provincia", systemImage: "")
                        .labelStyle(.titleOnly)
                        .padding(.top, 30)
                        .padding(.trailing, 280)
                    TextField("Provincia", text: $paginas)
                        .bold()
                        .padding()
                        .background(Color.color)
                        .cornerRadius(30)
                        .padding()
                    
                    Label("Ciudad", systemImage: "")
                        .labelStyle(.titleOnly)
                        .padding(.top, 30)
                        .padding(.trailing, 290)
                    TextField("Ciudad", text: $genero)
                        .bold()
                        .padding()
                        .background(Color.color)
                        .cornerRadius(30)
                        .padding()

                    
                    Text("Agregar Filtros")
                        .labelStyle(.titleOnly)
                        .padding(.top, 30)
                        .padding(.trailing, 290)
                    Divider()

                    HStack{
                        ViewFotoPerfil()
                            .frame(width: 50)
                        ViewFotoPerfil()
                            .frame(width: 50)
                        ViewFotoPerfil()
                            .frame(width: 50)
                        ViewFotoPerfil()
                            .frame(width: 50)
                        
                    }
                    
                    
                    HStack{
                        
                       
                         Button("Modificar") {
                             modificarLibro = true
                         }
                         .alert(isPresented: $modificarLibro) {
                             Alert(
                                 title: Text("Eliminar Libro"),
                                 message: Text("¿Estas seguro de que quieres eliminar este libro?"),
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
        //.tint(.brown)
    }
}

#Preview {
    ModificarLibroView()
}
