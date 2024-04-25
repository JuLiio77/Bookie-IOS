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
            
            if !datos.tokeen.isEmpty {
                
                InicioView()
                
            }else{
                
                VistaLogin()
            }
            
        }
        
    }
}


#Preview {
    ContentView()
}
