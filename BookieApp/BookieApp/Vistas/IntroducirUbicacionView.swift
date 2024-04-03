//
//  IntroducirUbicacionView.swift
//  BookieApp
//
//  Created by dam2 on 11/3/24.
//

import SwiftUI

struct IntroducirUbicacionView: View {
    
@State var nombre: String = ""
@State var repetirContrasenia: String = ""
@State var correo: String = ""
@State var contrasenia: String = ""

var body: some View {
    VStack{
        Text("Introducir ubicación")
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .bold()
            .padding()
        
        
        TextField("Provincia", text: $nombre)
            .bold()
            .padding()
            .background(Color.color)
            .cornerRadius(30)
            .padding(.top,150)
        
        TextField("Ciudad", text: $nombre)
            .bold()
            .padding()
            .background(Color.color)
            .cornerRadius(30)
            .padding(.top,40)
        
        TextField("Código postal", text: $nombre)
            .bold()
            .padding()
            .background(Color.color)
            .cornerRadius(30)
            .padding(.top,40)
        
        
       Button("Siguiente"){
           
       }
       .padding(20)
       .padding(.horizontal, 30)
       .background(Color.button)
       .foregroundColor(.black)
       .cornerRadius(20)
       .padding([.leading, .trailing], 10)
       .padding(.top, 75)
           
 
       
        
        Spacer()
        
        }
        .padding()
    }
}

#Preview {
    IntroducirUbicacionView()
}
