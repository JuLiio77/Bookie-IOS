//
//  ContentView.swift
//  BookieApp
//
//  Created by dam2 on 11/3/24.
//º

import SwiftUI

struct ContentView: View {
    
    @State private var isLoggedIn: Bool = false
    @State private var userData: ModelUser?
    
    var body: some View {
        
        HStack{
            
            if isLoggedIn {
                
                InicioView()
                
            }else{
                
                VistaLogin(correo: "", contrasenia: "", mostrarContrasenia: false, toggle: false)
            }
            
        }
        .onAppear{
            
            if let _ = userData?.token {
                isLoggedIn = true
                // llamar a la funciones para obtener los datos del usuario
            }
        }
        
        
    }
}


#Preview {
    ContentView()
}
