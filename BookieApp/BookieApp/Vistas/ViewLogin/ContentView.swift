//
//  ContentView.swift
//  BookieApp
//
//  Created by dam2 on 11/3/24.
//º

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var userData: FuncionLogin
    //var peticiones = Peticiones()
    @State var toggle: Bool = false
    
    @State var mostrarContrasenia: Bool = false

    var body: some View {
        
        NavigationStack{
            
            if userData.tokeen.isEmpty{
                
                loginScreen
                
            }else{
                TabarView()
            }
        }
        .onAppear(perform: {
            if let savedToken = UserDefaults.standard.string(forKey: "token"){
                userData.tokeen = savedToken
            }
        })
        
    }
    private var loginScreen: some View{
            VStack {
                
                Text("Bienvenido")
                    .font(.title)
                    .bold()
                    .padding()
                
                
                TextField("Correo electronico", text: $userData.username)
                    .bold()
                    .padding()
                    .background(Color.color)
                    .cornerRadius(30)
                    .padding(.top,90)
                    .textContentType(.name)
                    .autocapitalization(.none)
                
                ZStack(alignment: .trailingFirstTextBaseline) {
                    
                    if mostrarContrasenia {
                        TextField("Contraseña", text: $userData.password)
                            .padding()
                            .background(Color.color)
                            .cornerRadius(30)
                            .padding(.top, 40)
                            .autocapitalization(.none)
                        
                    } else {
                        SecureField("Contraseña", text: $userData.password)
                            .padding()
                            .background(Color.color)
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

                NavigationLink(destination: TabarView()){
                    
                    Button("iniciar sesion"){
                        
                        userData.check(username: userData.username, password: userData.password)
                        print ("has pulsado el botón")
                    }
                    .padding(20)
                    .padding(.horizontal, 30)
                    .background(Color.button)
                    .foregroundColor(.black)
                    .cornerRadius(20)
                    .padding([.leading, .trailing], 10)
                    .padding(.top, 75)
                    
                }
                
                NavigationLink("¿No tienes una cuenta? Creé una ahora", destination: RegistroView())
                    .padding(.top, 30)
                    .foregroundColor(.black)
            }
            .padding()
            
    }
}
        





#Preview {
    ContentView()
        .environmentObject(FuncionLogin())
}
