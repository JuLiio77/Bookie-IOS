//
//  FiltrosPerfilView.swift
//  BookieApp
//
//  Created by dam2 on 30/5/24.
//

import SwiftUI

struct FiltrosPerfilView: View {
    
        @Binding var filtroseleccionad: Filtros?
        
        let filtros: [Filtros] = [
            Filtros(nombre: "Romance", imagen: "filtroromance"),
            Filtros(nombre: "Aventura", imagen: "filtroaventuras"),
            Filtros(nombre: "Fantasía", imagen: "filtrofantasia"),
            Filtros(nombre: "Terror", imagen: "filtroterror"),
            Filtros(nombre: "Tragedia", imagen: "filtrotragedia"),
            Filtros(nombre: "Psicología", imagen: "filtropsicologia"),
            Filtros(nombre: "Aficciones", imagen: "filtroaficciones"),
            Filtros(nombre: "Poesia", imagen: "filtropoesia"),
            Filtros(nombre: "Historia", imagen: "filtrohistoria"),
            Filtros(nombre: "Ciencia ficción", imagen: "filtrociencia"),
            Filtros(nombre: "Infantil", imagen: "filtroinfantil"),
            Filtros(nombre: "Clásicos", imagen: "filtroeducacion"),
            Filtros(nombre: "Extranjero", imagen: "filtroextranjero")
        ]
        
        @Environment(\.presentationMode) var presentationMode
        
        @State private var mostraralerta = false
        @State private var seleccionarcateg: Filtros? = nil
        
        var body: some View {
            
            VStack {
                
                LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 3), spacing: 20) {
                    
                    ForEach(filtros) { filtro in
                        
                        Button(action: {
                            
                            seleccionarcateg = filtro
                            
                        }) {
                            
                            VStack {
                                
                                Image(filtro.imagen)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 70, height: 70)
                                //borde para saber que esta seleccionado
                                    .clipShape(Circle())
                                    .overlay(
                                        Circle().stroke(seleccionarcateg?.id == filtro.id ? Color.black : Color.clear, lineWidth: 2)
                                    )
                                
                                Text(filtro.nombre)
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
                        
                        Alert(title: Text("Agregar filtro"), message: Text("¿Quieres agregar el filtro \(seleccionarcateg?.nombre ?? "")?"), primaryButton: .default(Text("Aceptar")) {
                            
                            if let seleccionarcateg = seleccionarcateg {
                                filtroseleccionad = seleccionarcateg
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
    FiltrosPerfilView(filtroseleccionad: .constant(nil))
}
