//
//  PerfilView.swift
//  BookieApp
//
//  Created by dam2 on 18/3/24.
//

import SwiftUI

struct PerfilView: View {

    @State private var seleccionado = 0
    
    var body: some View {
        
        NavigationStack {
            
            
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
                    Text("Vista de Mis libros")
                } else if seleccionado == 1 {
                    Text("Vista de Reseñas")
                } else if seleccionado == 2 {
                    Text("Vista de Historial")
                    
                }
                
                Spacer()
            }
            
            
            Spacer()
            
            
            
                .navigationTitle("Julio Vera")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    Button(action: {
                        //accion
                    }) {
                        Image(systemName: "ellipsis")
                    }
                    .rotationEffect(.degrees(90))
                    .foregroundColor(Color.black)
                    
                }
        }
    }

}

#Preview {
    PerfilView()
}
