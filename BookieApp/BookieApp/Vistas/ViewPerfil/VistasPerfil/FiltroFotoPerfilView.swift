//
//  FiltroFotoPerfilView.swift
//  BookieApp
//
//  Created by dam2 on 30/5/24.
//

import SwiftUI

struct FiltroFotoPerfilView: View {
    
    @Binding var imagenseleccionada: Categorias?
    
    let categorias: [Categorias] = [
        Categorias(nombre: "Romance", imagen: "filtroromance"),
        Categorias(nombre: "Aventura", imagen: "filtroaventuras"),
        Categorias(nombre: "Fantasía", imagen: "filtrofantasia"),
        Categorias(nombre: "Terror", imagen: "filtroterror"),
        Categorias(nombre: "Tragedia", imagen: "filtrotragedia"),
        Categorias(nombre: "Psicología", imagen: "filtropsicologia"),
        Categorias(nombre: "Aficciones", imagen: "filtroaficciones"),
        Categorias(nombre: "Poesia", imagen: "filtropoesia"),
        Categorias(nombre: "Historia", imagen: "filtrohistoria"),
        Categorias(nombre: "Ciencia ficción", imagen: "filtrociencia"),
        Categorias(nombre: "Infantil", imagen: "filtroinfantil"),
        Categorias(nombre: "Clásicos", imagen: "filtroeducacion"),
        Categorias(nombre: "Extranjero", imagen: "filtroextranjero")
    ]
    
    @Environment(\.presentationMode) var presentationMode
    
    @State private var mostraralerta = false
    @State private var seleccionarcateg: Categorias? = nil
    
    var body: some View {
        
        VStack {
            
            LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 3), spacing: 20) {
                
                ForEach(categorias) { perfil in
                    
                    Button(action: {
                        
                        seleccionarcateg = perfil
                        
                    }) {
                        
                        VStack {
                            
                            Image(perfil.imagen)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 70, height: 70)
                            //borde para saber que esta seleccionado
                                .clipShape(Circle())
                                .overlay(
                                    Circle().stroke(seleccionarcateg?.id == perfil.id ? Color.black : Color.clear, lineWidth: 2)
                                )
                            
                            Text(perfil.nombre)
                                .font(.footnote)
                                .foregroundColor(.black)
                                .multilineTextAlignment(.center)
                        }
                    }
                }
            }
            .padding()
            
            HStack {
                
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Text("Cancelar")
                        .padding()
                        .frame(width: 130, height: 40)
                        .background(Color(red: 0.8, green: 0.5, blue: 0.4))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                Spacer()
                
                Button(action: {
                    mostraralerta = true
                }) {
                    Text("Aceptar")
                        .padding()
                        .frame(width: 130, height: 40)
                        .background(Color(red: 0.9, green: 0.6, blue: 0.5))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .alert(isPresented: $mostraralerta) {
                    
                    Alert(title: Text("Agregar foto"), message: Text("¿Quieres agregar como foto de perfil la imagen de la categoria \(seleccionarcateg?.nombre ?? "")?"), primaryButton: .default(Text("Aceptar")) {
                        
                        if let seleccionarcateg = seleccionarcateg {
                            imagenseleccionada = seleccionarcateg
                        }
                        presentationMode.wrappedValue.dismiss()
                    },
                          secondaryButton: .cancel()
                    )
                }
            }
            .padding(.horizontal)
            .padding([.leading, .trailing])
            .padding(.top, 20)
            
        }
        .padding()
    }
}

#Preview {
    FiltroFotoPerfilView(imagenseleccionada: .constant(nil))
}
