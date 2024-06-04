//
//  ContentView.swift
//  BookieApp
//
//  Created by dam2 on 11/3/24.
//º

import SwiftUI

struct ContentView: View {
    
    @StateObject private var datos = FuncionLogin()
    @State private var userData: ModelUser?
    
    var body: some View {
        
        HStack{
            
            var token = false
            // datos.tokeen.isEmpty
            if token{
                
                TabarView()
                               
            }else{
                
<<<<<<< HEAD:BookieApp/BookieApp/ContentView.swift
                VistaLogin(toggle: false, mostrarContrasenia: false)
=======
                VistaLogin(toggle: false, mostrarContrasenia: false, nextView: false, modelUser: ModelUser())
>>>>>>> julio:BookieApp/BookieApp/Vistas/ViewLogin/ContentView.swift
                
            }
            
        }
        
    } 
}


#Preview {
    ContentView()
        .environmentObject(FuncionLogin())
}
