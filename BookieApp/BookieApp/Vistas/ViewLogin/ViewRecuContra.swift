//
//  ViewRecuContra.swift
//  BookieApp
//
//  Created by dam2 on 15/3/24.
//

import SwiftUI

struct ViewRecuContra: View {

    @State var nombre: String = ""
    
    @State var contra: String = ""
    @State var contra2: String = ""
    
    @State var reContra: String = ""
    @State var reContra2: String = ""
    
    @State var mostarContrasenia = false
    @State var mostarContrasenia2 = false

    
    var body: some View {
        
        Text("Recupareción de contraseña")
            .font(.title)
            .padding([.leading, .trailing], 50)
        
        Label("Email", systemImage: "")
            .labelStyle(.titleOnly)
            .padding(.top, 90)
            .padding(.trailing, 280)
        
        TextField("email", text: $nombre)
            .bold()
            .padding()
            .background(Color.color)
            .cornerRadius(30)
            .padding([.leading, .trailing], 20)
        
        // Contraseña
        Label("Contraseña", systemImage: "")
            .labelStyle(.titleOnly)
            .padding(.top, 30)
            .padding(.trailing, 240)
        
        ZStack(alignment: .trailingFirstTextBaseline) {
            
            if mostarContrasenia {
                TextField("contraseña", text: $contra)
                    .padding()
                    .background(Color.color)
                    .cornerRadius(30)
                    .padding([.leading, .trailing], 20)
             
            } else {
                SecureField("contraseña", text: $contra)
                    .padding()
                    .background(Color.color)
                    .cornerRadius(30)
                    .padding([.leading, .trailing], 20)
            }

            Button(action: {
                mostarContrasenia.toggle()
            }) {
                Image(systemName: mostarContrasenia ? "eye.fill" : "eye.slash.fill")
                    .foregroundColor(.primary)
                    .padding(10)
            }
            .padding(.trailing, 25)
        }
        
        
        // Repetir la contraseña
        Label("Repetir contraseaña", systemImage: "")
            .labelStyle(.titleOnly)
            .padding(.top, 30)
            .padding(.trailing, 170)
        
        ZStack(alignment: .trailingFirstTextBaseline) {
            if mostarContrasenia2 {
                TextField("Contraseña", text: $reContra2)
                    .padding()
                    .background(Color.color)
                    .cornerRadius(30)
                    .padding([.leading, .trailing], 20)
             
            } else {
                SecureField("Contraseña", text: $contra2)
                    .padding()
                    .background(Color.color)
                    .cornerRadius(30)
                    .padding([.leading, .trailing], 20)
            }

            Button(action: {
                mostarContrasenia2.toggle()
            }) {
                Image(systemName: mostarContrasenia2 ? "eye.fill" : "eye.slash.fill")
                    .foregroundColor(.primary)
                    .padding(10)
            }
            .padding(.trailing, 25)
        }
        
        Button(action: {}, label: {
            Text("Continuar")
                .padding(20)
                .padding(.horizontal, 30)
                .background(Color.button)
                .foregroundColor(.white)
                .cornerRadius(20)
                .padding([.leading, .trailing], 10)
                .padding(.top, 75)
        })
    }
}

#Preview {
    ViewRecuContra()
}
