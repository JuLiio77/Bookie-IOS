//
//  LibroPropioDetallesView.swift
//  BookieApp
//
//  Created by dam2 on 23/4/24.
//

import SwiftUI

struct LibroPropioDetallesView: View {
    @State var eliminarLibro = false
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    let columnas = [
        GridItem(.flexible(minimum: 60, maximum: 100), spacing: 60),
        GridItem(.adaptive(minimum: 60, maximum: 100), spacing: 60),
        GridItem(.flexible(minimum: 60, maximum: 100), spacing: 60)
    ]
    var infoUser = ModelUser()
     @ObservedObject var infoLibros = FuncionesLibro()
    
    var libro: LibroUsuario
    
    var body: some View {
        
        NavigationStack{
            
            ScrollView(){
                                    
                    VStack{
                        NavigationLink(destination: PerfilView(modelUser: ModelUser())) {
                            Label("\(libro.usuario)", image: "filtrofantasia")
                                .padding(.leading, 250)
                                .padding([.top, .bottom], 15)
                                .foregroundColor(.black)
                        }
                        
                        
                        Image("portadaLibro")
                            .frame(width: 166, height: 196)
                            .foregroundColor(.blue)
                            .background(Color.gray, in: .rect)
                            .cornerRadius(20)
                        
                        
                        ZStack{
                            
                            Rectangle()
                                .frame(height: 80)
                                .foregroundStyle(Color.button)
                                .opacity(0.3)
                            
                            Text("titulo")
                                .font(.title2)
                                .foregroundStyle(.brown)
                                .bold()
                                .padding(.bottom, 30)
                                .padding(.trailing, 270)
                            
                            Text(libro.titulo)
                                .padding(.top, 20)
                                .padding(.trailing, 150)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                
                        }
                        .padding([.top,.bottom], 15)
                        //.background(Color.button)
                        
                        
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
                            Text(libro.autor)
                            
                            
                            Text(libro.genero)
                            
                            Text("Estado")
                                .font(.title2)
                                .foregroundStyle(.brown)
                                .bold()
                                .padding(.top, 2)
                            
                            Text("Nº Paginas")
                                .font(.title2)
                                .foregroundStyle(.brown)
                                .bold()
                                .padding(.top, 2
                                )
                            Text("Nuevo")
                            Text("\(libro.numeroPaginas)")
                            Text("Editorial")
                                .font(.title2)
                                .foregroundStyle(.brown)
                                .bold()
                                .padding(.top, 2)
                            Text("")
                            
                            
                            Text(libro.editorial)
                            
                        })
                        
                        Text("Filtros")
                            .font(.title2)
                            .foregroundStyle(.brown)
                            .bold()
                            .padding(.trailing, 250)
                            .padding(.top, 25)
                        
                        HStack{
//                            ViewFotoPerfil()
//                                .frame(width: 50)
//                            ViewFotoPerfil()
//                                .frame(width: 50)
//                            ViewFotoPerfil()
//                                .frame(width: 50)
//                            ViewFotoPerfil()
//                                .frame(width: 50)
                            
                        }
                        
                        
                        HStack{
                            
                            NavigationLink("Modificar", destination: ModificarLibroView())
                                .padding(15)
                                .padding(.horizontal, 20)
                                .background(.brown)
                                .foregroundColor(.white)
                                .cornerRadius(30)
                                .padding([.leading, .trailing], 10)
                                .padding(.top, 20)
                                .navigationBarBackButtonHidden(true)
                            
                            
                            Button("Eliminar") {
                                eliminarLibro = true
                            }
                            .alert(isPresented: $eliminarLibro) {
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
                }
            
            
        }
        //.tint(.brown)
    }
}
#Preview {
    LibroPropioDetallesView(libro: LibroUsuario())
}
