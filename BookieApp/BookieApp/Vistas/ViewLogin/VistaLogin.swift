//
//  VistaLogin.swift
//  BookieApp
//
//  Created by dam2 on 23/4/24.
//

import SwiftUI

struct VistaLogin: View {
    
    @EnvironmentObject var datos: FuncionLogin
    @State var toggle: Bool
    @State var mostrarContrasenia: Bool
<<<<<<< HEAD
=======
    @State var nextView: Bool
    @State var modelUser: ModelUser
>>>>>>> julio
    
    var body: some View {
        
        VStack {
            
            Text("Bienvenido")
                .font(.title)
                .bold()
                .padding()
            
            
            TextField("Nombre de Usuario", text: $datos.username)
                .bold()
                .padding()
                .background(Color.mensajefondo)
                .cornerRadius(30)
                .padding(.top,130)
                .textContentType(.username)
                .textInputAutocapitalization(.never)
                
            
            ZStack(alignment: .trailingFirstTextBaseline) {
                
<<<<<<< HEAD
<<<<<<< HEAD
                
            TextField("Nombre de Usuario", text: $modelUser.username)
                    .bold()
                    .padding()
<<<<<<< HEAD
                    .background(Color.button)
=======
                    .background(Color.fondo)
>>>>>>> julio
                    .cornerRadius(30)
                    .padding(.top,130)
                    .textContentType(.username)
                    .textInputAutocapitalization(.never)
                
                
                ZStack(alignment: .trailingFirstTextBaseline) {
                    
                    if mostrarContrasenia {
                        TextField("Contraseña", text: $datos.password)
                            .padding()
<<<<<<< HEAD
                            .background(Color.button)
=======
                            .background(Color.fondo)
>>>>>>> julio
                            .cornerRadius(30)
                            .padding(.top, 40)
                        
                    } else {
                        SecureField("Contraseña", text: $datos.password)
                            .padding()
<<<<<<< HEAD
                            .background(Color.button)
=======
                            .background(Color.fondo)
>>>>>>> julio
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
=======
=======
>>>>>>> parent of aea6009 (funcion login y que cambie de vista)
                if mostrarContrasenia {
                    TextField("Contraseña", text: $datos.password)
                        .padding()
                        .background(Color.mensajefondo)
                        .cornerRadius(30)
                        .padding(.top, 40)
<<<<<<< HEAD
>>>>>>> parent of aea6009 (funcion login y que cambie de vista)
=======
>>>>>>> parent of aea6009 (funcion login y que cambie de vista)
                    
                } else {
                    SecureField("Contraseña", text: $datos.password)
                        .padding()
                        .background(Color.mensajefondo)
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
                datos.check(username: datos.username, password: datos.password)
                
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
            
            NavigationLink("registreo", destination: RegistroView())
            
            NavigationLink("¿No tienes una cuenta? Creé una ahora", destination: RegistroView())
                .padding(.top, 30)
                .foregroundColor(.black)
        }
        .padding()
        
    }
    //.tint(.brown)
    
}

#Preview {
<<<<<<< HEAD
    VistaLogin(toggle: false, mostrarContrasenia: false)
=======
    VistaLogin(toggle: false, mostrarContrasenia: false, nextView: false, modelUser: ModelUser())
>>>>>>> julio
        .environmentObject(FuncionLogin())
}