//
//  PerfilView.swift
//  BookieApp
//
//  Created by dam2 on 18/3/24.
//

import SwiftUI

struct PerfilView: View {

    @StateObject var userData = FuncionLogin()
    @StateObject private var funcionesPerfil = FuncionesPerfil()
    
    @State private var seleccionado = 0
    @State var isPresented: Bool = false
    let modelUser: ModelUser
    
    let modelUser: ModelUser
    
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
            
            
            HStack {
                
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 120, height: 120)
                
                
                VStack(alignment: .leading) {
                    Text("\(modelUser.ciudad)")
                    
                    Text("4,8 ★")
                    
                    Text("Bookies favoritas")
                }
            }
            .padding(.trailing, 70)
            
            HStack {
                
                VStack {
<<<<<<< HEAD
                    Image(systemName: "eye.circle.fill")
                        .resizable()
                        .frame(width: 40, height: 40)
                    Text("Misterio")
                        .font(.caption)
=======
                    Picker("", selection: $seleccionado) {
                        Text("Mis libros").tag(0)
                        Text("Reseñas").tag(1)
                        Text("Historial").tag(2)
                    }
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
>>>>>>> origin/letizia
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
                
<<<<<<< HEAD
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
                .navigationTitle("\(modelUser.nombre)")
                .navigationBarTitleDisplayMode(.inline)

=======
                    .navigationTitle("\(modelUser.nombre)")
                    .navigationBarTitleDisplayMode(.inline)
            }
            .onAppear {
                funcionesPerfil.listaLibros()
            }
>>>>>>> origin/letizia
        }
        .onAppear{
            funcionesPerfil.listaLibros()
        }
        
    }
}

#Preview {
<<<<<<< HEAD
    PerfilView(modelUser: ModelUser(id: 2))
    
=======
    PerfilView(modelUser: ModelUser())
        .environmentObject(LibrosFavoritos())
>>>>>>> origin/letizia
}
