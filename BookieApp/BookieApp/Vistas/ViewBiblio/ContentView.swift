//
//  ContentView.swift
//  BookieApp
//
//  Created by dam2 on 11/3/24.
//º

import SwiftUI

struct ContentView: View {
    
    @StateObject private var datos = FuncionLogin()    

    var body: some View {
        
        HStack{
            
            var token = !datos.tokeen.isEmpty
            
            if token{
                
                TabarView()
<<<<<<< HEAD:BookieApp/BookieApp/Vistas/ViewLogin/ContentView.swift
            } else {
                VistaLogin(datos: datos, toggle: false, mostrarContrasenia: false, nextView: false, modelUser: ModelUser())
=======
                               
            }else{
                
                VistaLogin(toggle: false, mostrarContrasenia: false, nextView: false, modelUser: ModelUser())
                
>>>>>>> julio:BookieApp/BookieApp/Vistas/ViewBiblio/ContentView.swift
            }
            
        }
        
    }
}


#Preview {
    ContentView()
        .environmentObject(FuncionLogin())
}
