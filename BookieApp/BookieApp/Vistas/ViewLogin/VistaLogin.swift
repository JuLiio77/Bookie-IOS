//
//  VistaLogin.swift
//  BookieApp
//
//  Created by dam2 on 23/4/24.
//

import SwiftUI

struct VistaLogin: View {
    
    @EnvironmentObject var datos: FuncionLogin
    //@State var modelo: ModelUser
    @State var toggle: Bool
    @State var mostrarContrasenia: Bool
    
    var body: some View {
        
        VStack {
            
            Text("Bienvenido")
                .font(.title)
                .bold()
                .padding()
            
            
            TextField("Correo electronico", text: $datos.email)
                .bold()
                .padding()
                .background(Color.color)
                .cornerRadius(30)
                .padding(.top,130)
                .textContentType(.emailAddress)
            
            ZStack(alignment: .trailingFirstTextBaseline) {
                
                if mostrarContrasenia {
                    TextField("Contraseña", text: $datos.password)
                        .padding()
                        .background(Color.color)
                        .cornerRadius(30)
                        .padding(.top, 40)
                    
                } else {
                    SecureField("Contraseña", text: $datos.password)
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
                
                Toggle("", isOn: $toggle)
                Text("Recordar contraseña")
                
            }
            .frame(width: 400)
            .padding(.top, 20)
            .padding(.trailing, 200.0)
            .toggleStyle(SwitchToggleStyle(tint: Color.button))
            
            
            
            NavigationLink("¿Has olvidado la contraseña?", destination: ViewRecuContra())
                .padding(.top, 20)
                .foregroundColor(.black)
                .navigationBarBackButtonHidden(true)
            
            
            Button("Inicio Sesion", action: {
                datos.check(username: "inigo12314", password: "12345")
                
                //$datos.user
            })
            .padding(20)
            .padding(.horizontal, 30)
            .background(Color.button)
            .foregroundColor(.black)
            .cornerRadius(20)
            .padding([.leading, .trailing], 10)
            .padding(.top, 75)
            .navigationBarBackButtonHidden(true)
            
            
            

            
            NavigationLink("¿No tienes una cuenta? Creé una ahora", destination: RegistroView())
                .padding(.top, 30)
                .foregroundColor(.black)
        }
        .padding()
        
    }
    //.tint(.brown)
    
}

#Preview {
    VistaLogin(toggle: false, mostrarContrasenia: false)
        .environmentObject(FuncionLogin())
}
