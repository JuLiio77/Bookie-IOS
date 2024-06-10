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
    @State var nextView: Bool
    
    var body: some View {
        
        NavigationStack{
            
            VStack{
                
          Image("filtrofantasia")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200, height: 250)
                
         
                
                TextField("Nombre de usuario", text: $datos.username)
                    .bold()
                    .padding()
                    .background(Color.fondo)
                    .cornerRadius(30)
                    .padding(.top, 130)
                    .padding()
                    .textContentType(.username)
                    .textInputAutocapitalization(.never)
                
                NavigationLink(destination: VistaLogin(toggle: false, mostrarContrasenia: false, nextView: false, modelUser: ModelUser(), username: ""), isActive: $nextView){
                    
                    Button("Finalizar", action:{
                        datos.register()
                        self.nextView = true

                    })
                }
                .padding(20)
                .padding(.horizontal, 30)
                .background(Color.button)
                .foregroundColor(.black)
                .cornerRadius(20)
                .padding([.leading, .trailing], 10)
                .padding(.top, 75)
                                
//                Button("Finalizar", action:{
//                    datos.register()
//                })
//                NavigationLink("Finalizar", destination: {
//                    VistaLogin(toggle: false, mostrarContrasenia: false, nextView: false, modelUser: ModelUser())
//                })
//                .padding(20)
//                .padding(.horizontal, 30)
//                .background(Color.button)
//                .foregroundColor(.black)
//                .cornerRadius(20)
//                .padding([.leading, .trailing], 10)
//                .padding(.top, 75)
            }
            .background(Color.color1)
            
        }
    }
}

#Preview {
    ViewRegistroFoto(nextView: false)
        .environmentObject(FuncionLogin())
}
