//
//  RegistroView.swift
//  BookieApp
//
//  Created by dam2 on 11/3/24.
//

import SwiftUI

struct RegistroView: View {
    
    @EnvironmentObject var userData: FuncionLogin
    var peticiones = Peticiones()
    
    @State var mostrarContrasenia: Bool = false
    @State var mostrarContrasenia1: Bool = false
    
    
    var body: some View {
        
        VStack {
            
            Text("Registro")
                .font(.title)
                .bold()
                .padding()
            
            
            TextField("Nombre", text: $userData.name)
                .bold()
                .padding()
                .background(Color.color1)
                .cornerRadius(30)
                .padding(.top,90)
                .autocapitalization(.none)
            
            TextField("Correo electronico", text: $userData.email)
                .bold()
                .padding()
                .background(Color.color1)
                .cornerRadius(30)
                .padding(.top,40)
                .autocapitalization(.none)
            
            
            ZStack(alignment: .trailingFirstTextBaseline) {
                if mostrarContrasenia {
                    TextField("Contraseña", text: $userData.password)
                        .padding()
                        .background(Color.color1)
                        .cornerRadius(30)
                        .padding(.top, 40)
                        .autocapitalization(.none)
                    
                } else {
                    SecureField("Contraseña", text: $userData.password)
                        .padding()
                        .background(Color.color1)
                        .cornerRadius(30)
                        .padding(.top, 40)
                        .autocapitalization(.none)
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
                    TextField("Contraseña", text: $userData.repassword)
                        .padding()
                        .background(Color.color1)
                        .cornerRadius(30)
                        .padding(.top, 40)
                        .autocapitalization(.none)
                    
                } else {
                    SecureField("Contraseña", text: $userData.repassword)
                        .padding()
                        .background(Color.color1)
                        .cornerRadius(30)
                        .padding(.top, 40)
                        .autocapitalization(.none)
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
            
            NavigationLink("Siguiente", destination:{
                IntroducirUbicacionView()
                    
            })
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
        .environmentObject(FuncionLogin())
}
