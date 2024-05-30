//
//  PerfilView.swift
//  BookieApp
//
//  Created by dam2 on 18/3/24.
//

import SwiftUI

struct PerfilView: View {
    
    @StateObject var userData = FuncionLogin()
    
    @State private var seleccionado = 0
    @State var isPresented: Bool = false
    
    @State var isPresentedFoto: Bool = false
    @State var imagenseleccionada: Categorias? = PerfilViewDefaults.shared.loadimagenseleccionada()
    @State var filtroseleccionado: [String : Filtros?] = PerfilViewDefaults.shared.loadfiltroselect()
    
    var body: some View {
        
        NavigationStack {
            
            Button(action: {
                //accion
            }) {
                Button(action: {
                    isPresented = true
                }) {
                    Image(systemName: "gearshape")
                        .foregroundColor(.black)
                    
                }
            }
            .sheet(isPresented: $isPresented, onDismiss: {isPresented = false}, content: {
                AjustesPerfil(isPresented: $isPresented)
                    .presentationDetents([.large])
            })
            
            .padding(.leading, 320)
            .font(.headline)
            
            VStack {
                
                HStack {
                    
                    Button(action: {
                        isPresentedFoto = true
                    }) {
                        if let imagen = imagenseleccionada {
                            Image(imagen.imagen)
                                .resizable()
                                .frame(width: 120, height: 120)
                                .clipShape(Circle())
                        } else {
                            Image(systemName: "person.circle.fill")
                                .resizable()
                                .frame(width: 120, height: 120)
                                .foregroundColor(.black)
                        }
                    }
                    .sheet(isPresented: $isPresentedFoto, onDismiss: { isPresentedFoto = false
                        
                        //guardar imagen selecc en userdefaults
                        PerfilViewDefaults.shared.guardarimagenseleccionada(imagenseleccionada)
                      
                    }) {
                        FiltroFotoPerfilView(imagenseleccionada: $imagenseleccionada)
                            .presentationDetents([.large])
                    }
                    
                    VStack(alignment: .leading) {
                        //Text("\(userData.ciudad)")
                        
                        Text("4,8 ★")
                            .padding(.leading, 10)
                        
                        Text("Bookies favoritas")
                            .padding(.leading, 10)
                    }
                }
                .padding(.trailing, 70)
                
                
                HStack {
                    
                    /*FiltroView(filtroseleccionado: $filtroseleccionado[], nombre: "Misterio", systemImagen: "eye.circle.fill")
                        .padding(.horizontal, 10)*/
                    
                    VStack {
                        Image(systemName: "eye.circle.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                        Text("Misterio")
                            .font(.caption)
                    }
                    .padding(.horizontal, 10)
                    
                    
                    VStack {
                        Image(systemName: "leaf.circle.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                        Text("Aventura")
                            .font(.caption)
                        
                    }
                    
                    .padding(.horizontal, 10)
                    
                    VStack {
                        Image(systemName: "book.circle.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                        Text("Filosofía")
                            .font(.caption)
                        
                    }
                    
                    .padding(.horizontal, 10)
                    
                }
                .padding(.leading, 100)
                
                VStack {
                    Picker("", selection: $seleccionado) {
                        Text("Mis libros").tag(0)
                        Text("Reseñas").tag(1)
                        Text("Historial").tag(2)
                    }
                    //                .background(Color.blue)
                    .pickerStyle(SegmentedPickerStyle())
                    .padding()
                    
                    Spacer()
                    
                    if seleccionado == 0 {
                        ViewMisLibros()
                    } else if seleccionado == 1 {
                        ViewReview()
                    } else if seleccionado == 2 {
                        ViewHistorial()
                        
                    }
                    
                    Spacer()
                }
                
                Spacer()
                
                    .navigationTitle("\(userData.name)")
                    .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

#Preview {
    PerfilView()
        .environmentObject(LibrosFavoritos())
    
}
