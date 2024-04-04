//
//  ContentView.swift
//  BookieApp
//
//  Created by dam2 on 11/3/24.
//º

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var userData: FuncionLogin
    @StateObject var datosDefaults = FuncionLogin.sharec
    var peticiones = Peticiones()
    
    
    @State var user = AuthRequest(username: "sdfsdf", password: "sdfsfsdf")
    
    @State var toggle: Bool = false
    
    @State var mostrarContrasenia: Bool = false

    var body: some View {
        
        NavigationStack{
            
            VStack {
                
                Text("Bienvenido")
                    .font(.title)
                    .bold()
                    .padding()
                
                
                TextField("Correo electronico", text: $userData.email)
                    .bold()
                    .padding()
                    .background(Color.color)
                    .cornerRadius(30)
                    .padding(.top,130)
                    .textContentType(.emailAddress)
                
                ZStack(alignment: .trailingFirstTextBaseline) {
                    
                    if mostrarContrasenia {
                        TextField("Contraseña", text: $userData.password)
                            .padding()
                            .background(Color.color)
                            .cornerRadius(30)
                            .padding(.top, 40)
                        
                    } else {
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
                
                HStack {
                    
                    Toggle("",isOn: $toggle)
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
                

                Button("Iniciar Sesion"){
                    
                    DispatchQueue.main.async {
                        peticiones.login{ newUser in
                            user = newUser
                        }
                    }
                    
                    userData.register()
                }
                .padding(20)
                .padding(.horizontal, 30)
                .background(Color.button)
                .foregroundColor(.black)
                .cornerRadius(20)
                .padding([.leading, .trailing], 10)
                .padding(.top, 75)
                
//                NavigationLink("Iniciar Sesion", destination: TabarView())
//                    .padding(20)
//                    .padding(.horizontal, 30)
//                    .background(Color.button)
//                    .foregroundColor(.black)
//                    .cornerRadius(20)
//                    .padding([.leading, .trailing], 10)
//                    .padding(.top, 75)
//                    .navigationBarBackButtonHidden(true)
                
                NavigationLink("¿No tienes una cuenta? Creé una ahora", destination: RegistroView())
                    .padding(.top, 30)
                    .foregroundColor(.black)
            }
            .padding()
            
        }
        .tint(.brown)
    }
}



#Preview {
    ContentView()
        .environmentObject(FuncionLogin())
}
