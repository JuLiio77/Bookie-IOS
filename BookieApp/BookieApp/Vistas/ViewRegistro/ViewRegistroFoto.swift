//
//  ViewRegistroFoto.swift
//  BookieApp
//
//  Created by dam2 on 16/5/24.
//

import SwiftUI

struct ViewRegistroFoto: View {
    
    @EnvironmentObject var datos: FuncionLogin
    @State var nombre: String = ""
    var body: some View {
        
        NavigationStack{
            
            VStack{
                
                Circle()
                    .frame(width: 300)
                
                Rectangle()
                    .frame(width: 65, height: 50)
                
                
                TextField("Nombre de usuario", text: $datos.username)
                    .bold()
                    .padding()
                    .background(Color.mensajefondo)
                    .cornerRadius(30)
                    .padding(.top, 50)
                    .textInputAutocapitalization(.never)
                
                Button("Finalizar", action:{
                    
                    datos.register()
                    
                })
                NavigationLink("Finalizar", destination: {
                    VistaLogin(toggle: false, mostrarContrasenia: false, nextView: false)
                })
                .padding(20)
                .padding(.horizontal, 30)
                .background(Color.button)
                .foregroundColor(.black)
                .cornerRadius(20)
                .padding([.leading, .trailing], 10)
                .padding(.top, 75)
            }
            
        }
    }
}

#Preview {
    ViewRegistroFoto()
        .environmentObject(FuncionLogin())
}
