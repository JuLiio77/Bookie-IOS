//
//  IntroducirUbicacionView.swift
//  BookieApp
//
//  Created by dam2 on 11/3/24.
//

import SwiftUI

struct IntroducirUbicacionView: View {
    
    @EnvironmentObject var userData: FuncionLogin
    var peticiones = Peticiones()
    
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
        
        
        TextField("Provincia", text: $userData.provincia)
            .bold()
            .padding()
            .background(Color.color)
            .cornerRadius(30)
            .padding(.top,150)
        
        TextField("Ciudad", text: $userData.ciudad)
            .bold()
            .padding()
            .background(Color.color)
            .cornerRadius(30)
            .padding(.top,40)
        
        TextField("Código postal", text: $userData.codigoPostal)
            .bold()
            .padding()
            .background(Color.color)
            .cornerRadius(30)
            .padding(.top,40)
        
        
       Button("Siguiente"){
           userData.register()
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
        .environmentObject(FuncionLogin())
}
