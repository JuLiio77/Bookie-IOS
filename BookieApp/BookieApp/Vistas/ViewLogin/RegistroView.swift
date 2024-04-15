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
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .bold()
                .padding()
            
            Label("Nombre", systemImage: "")
                .labelStyle(.titleOnly)
                .padding(.top, 90)
                .padding(.trailing, 280)
            TextField("Nombre", text: $userData.name)
                .bold()
                .padding()
                .background(Color.color)
                .cornerRadius(30)

            
            Label("Email", systemImage: "")
                .labelStyle(.titleOnly)
                .padding(.top, 30)
                .padding(.trailing, 280)
            TextField("Correo electronico", text: $userData.email)
                .bold()
                .padding()
                .background(Color.color)
                .cornerRadius(30)
            
            
            ZStack(alignment: .trailingFirstTextBaseline) {
                if mostrarContrasenia {
                    
                    TextField("Contraseña", text: $userData.password)
                        .padding()
                        .background(Color.color)
                        .cornerRadius(30)
                        .padding(.top, 40)
                    
                } else {
                    Label("Email", systemImage: "")
                        .labelStyle(.titleOnly)
                        .padding(.top, 30)
                        .padding(.trailing, 280)
                    SecureField("Contraseña", text: $userData.password)
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
                    Label("Email", systemImage: "")
                        .labelStyle(.titleOnly)
                        .padding(.top, 30)
                    TextField("Contraseña", text: $userData.repassword)
                        .padding()
                        .background(Color.color)
                        .cornerRadius(30)
                        .padding(.top, 40)
                    
                } else {
                    SecureField("Contraseña", text: $userData.repassword)
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
        .environmentObject(FuncionLogin())
}
