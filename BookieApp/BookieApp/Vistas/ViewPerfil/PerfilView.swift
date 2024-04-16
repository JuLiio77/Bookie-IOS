//
//  PerfilView.swift
//  BookieApp
//
//  Created by dam2 on 18/3/24.
//

import SwiftUI

struct PerfilView: View {

    @State private var seleccionado = 0
    @State var isPresented: Bool = false

    
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
                    Text("Linares")
                    
                    Text("4,8 ★")
                    
                    Text("Bookies favoritas")
                }
            }
            .padding(.trailing, 70)
            .padding(.top, -15)
            
            
              
            
            
            HStack {
                
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
                    VistaHistorial()
                } else if seleccionado == 1 {
                    VistaReview()
                } else if seleccionado == 2 {
                  VistaHistorial()
                    
                }
                
                Spacer()
            }
            
            
            Spacer()
            
            
            
                .navigationTitle("Julio Vera")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                        
                        
                        
                     
                       
                    }
                    .rotationEffect(.degrees(90))
                    .foregroundColor(Color.black)
                    
                }
        }
    }



#Preview {
    PerfilView()
        .environmentObject(ColorListAjustes())
}
