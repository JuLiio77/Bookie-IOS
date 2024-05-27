//
//  FiltroLibrosView.swift
//  BookieApp
//
//  Created by dam2 on 20/5/24.
//

import SwiftUI

struct FiltroLibrosView: View {
    
    @Binding var categoriaseleccionada: String
    
    let categoria: [Categorias] = [
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
    
<<<<<<< HEAD
    @Environment(\.presentationMode) var presentationMode
    
    @State private var mostraralerta = false
    @State private var seleccionarcateg: Categorias? = nil
    
=======
>>>>>>> jose
    var body: some View {
        
        VStack {
            
            LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 3), spacing: 20) {
                
                ForEach(categoria) { categorias in
                    
                    Button(action: {
                        
<<<<<<< HEAD
                        //seleccionar solo un maximo de tres categorias
                        if categoriaseleccionada.count < 3 {
                            
                            seleccionarcateg = categoria
                            
                            /*if !categoriaseleccionada.contains(where: { $0.id == categoria.id }) {
                             categoriaseleccionada.append(categoria)
                             }*/
                        }
    
                    }) {
                        
                        VStack {
                            
                            Image(categoria.imagen)
=======
                        categoriaseleccionada = categorias.imagen
                        print("\(categorias.nombre) pulsado")
                        
                    }) {
                        
                        VStack {
                            Image(categorias.imagen)
>>>>>>> jose
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 70, height: 70)
                            //borde para saber que esta seleccionado
                                .clipShape(Circle())
                                .overlay(
                                    Circle().stroke(seleccionarcateg?.id == categoria.id ? Color.black : Color.clear, lineWidth: 2)
                                )
                            
                            Text(categorias.nombre)
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
                    //
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
<<<<<<< HEAD
                    mostraralerta = true
=======
                    //
>>>>>>> jose
                }) {
                    Text("Aceptar")
                        .padding()
                        .frame(width: 130, height: 40)
                        .background(Color(red: 0.9, green: 0.6, blue: 0.5))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                    
                        .alert(isPresented: $mostraralerta) {
                            
                            Alert(title: Text("Agregar filtro"), message: Text("¿Quieres agregar el filtro \(seleccionarcateg?.nombre ?? "")?"), primaryButton: .default(Text("Aceptar")) {
                                
                                if let seleccionarcateg = seleccionarcateg {
                                    categoriaseleccionada.append(seleccionarcateg)
                                }
                                presentationMode.wrappedValue.dismiss()
                            },
                                  secondaryButton: .cancel()
                            )
                        }
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
    FiltroLibrosView(categoriaseleccionada: .constant(""))
}
