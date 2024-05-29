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
                               
            }else{
                
                VistaLogin(toggle: false, mostrarContrasenia: false, nextView: false)
                
            }
            
        }
        
    } 
}


#Preview {
    ContentView()
        .environmentObject(FuncionLogin())
}
