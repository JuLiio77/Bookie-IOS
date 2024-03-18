//
//  ContentView.swift
//  BookieApp
//
//  Created by dam2 on 11/3/24.
//º

import SwiftUI

struct ContentView: View {
    
    @State var correo: String = ""
    @State var contrasenia: String = ""
    @State var toggle: Bool = false
    
    @State var mostrarContrasenia: Bool = false


    
    var body: some View {
        
        VStack {
            
            Text("Bienvenido")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .bold()
                .padding()
            
            
            TextField("Correo electronico", text: $correo)
                .bold()
                .padding()
                .background(Color.color)
                .cornerRadius(30)
                .padding(.top,130)
                .textContentType(.emailAddress)
            
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
            HStack {
                Toggle("",isOn: $toggle)
                Text("Recordar contraseña")
            }
            .frame(width: 400)
            .padding(.top, 20)
            .padding(.trailing, 200.0)
            .toggleStyle(SwitchToggleStyle(tint: Color.button))
            
            
            
            Button("¿Has olvidado la contraseña?"){
            }
            .padding(.top, 20)
            .foregroundColor(.black)
            
            
            
            Button("Iniciar sesión"){
            }
            .padding(20)
            .padding(.horizontal, 30)
            .background(Color.button)
            .foregroundColor(.black)
            .cornerRadius(20)
            .padding([.leading, .trailing], 10)
            .padding(.top, 75)
            
            
            Button("Crear cuenta"){
                
            }
            .padding(.top, 30)
            .foregroundColor(.black)
            
            
        }
        .padding()
        
    }
}



#Preview {
    ContentView()
}
