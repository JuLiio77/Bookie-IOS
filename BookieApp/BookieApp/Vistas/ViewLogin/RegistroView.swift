//
//  RegistroView.swift
//  BookieApp
//
//  Created by dam2 on 11/3/24.
//

import SwiftUI

struct RegistroView: View {
    
    @State var nombre: String = ""
    @State var repetirContrasenia: String = ""
    @State var correo: String = ""
    @State var contrasenia: String = ""
    
    @State var mostrarContrasenia: Bool = false
    @State var mostrarContrasenia1: Bool = false


    var body: some View {
        VStack {
            
            Text("Registro")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .bold()
                .padding()
            
            
            TextField("Nombre", text: $nombre)
                .bold()
                .padding()
                .background(Color.color)
                .cornerRadius(30)
                .padding(.top,90)
            
            TextField("Correo electronico", text: $nombre)
                .bold()
                .padding()
                .background(Color.color)
                .cornerRadius(30)
                .padding(.top,40)
                
            
            ZStack(alignment: .trailingFirstTextBaseline) {
                if mostrarContrasenia {
                    TextField("Contraseña", text: $contrasenia)
                        .padding()
                        .background(Color.color)
                        .cornerRadius(30)
                        .padding(.top, 40)
                 
                } else {
                    SecureField("Contraseña", text: $contrasenia)
                        .padding()
                        .background(Color.color)
                        .cornerRadius(30)
                        .padding(.top, 40)
                }

                Button(action: {
                    mostrarContrasenia.toggle()
                }) {
                    Image(systemName: mostrarContrasenia ? "eye.fill" : "eye.slash.fill")
                        .foregroundColor(.primary)
                        .padding(10)
                }
                .padding(.trailing, 15)
            }

            
            ZStack(alignment: .trailingFirstTextBaseline) {
                if mostrarContrasenia1 {
                    TextField("Contraseña", text: $repetirContrasenia)
                        .padding()
                        .background(Color.color)
                        .cornerRadius(30)
                        .padding(.top, 40)
                 
                } else {
                    SecureField("Contraseña", text: $repetirContrasenia)
                        .padding()
                        .background(Color.color)
                        .cornerRadius(30)
                        .padding(.top, 40)
                }

                Button(action: {
                    mostrarContrasenia1.toggle()
                }) {
                    Image(systemName: mostrarContrasenia1 ? "eye.fill" : "eye.slash.fill")
                        .foregroundColor(.primary)
                        .padding(10)
                }
                .padding(.trailing, 15)
            }
            
          
            

     
            Button("Siguiente"){
                
            }
            .padding(20)
            .padding(.horizontal, 30)
            .background(Color.button)
            .foregroundColor(.black)
            .cornerRadius(20)
            .padding([.leading, .trailing], 10)
            .padding(.top, 75)
            
      
            
        }
        .padding()
    }
}
#Preview {
    RegistroView()
}
