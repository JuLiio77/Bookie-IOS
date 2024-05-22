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
    
    var body: some View {
        
        VStack {
            
            LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 3), spacing: 20) {
                
                ForEach(categoria) { categorias in
                    
                    Button(action: {
                        
                        categoriaseleccionada = categorias.imagen
                        print("\(categorias.nombre) pulsado")
                        
                    }) {
                        
                        VStack {
                            Image(categorias.imagen)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 70, height: 70)
                            
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
                    //
                }) {
                    Text("Aceptar")
                        .padding()
                        .frame(width: 130, height: 40)
                        .background(Color(red: 0.9, green: 0.6, blue: 0.5))
                        .foregroundColor(.white)
                        .cornerRadius(10)
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
