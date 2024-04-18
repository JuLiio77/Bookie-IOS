//
//  ViewRegUserFoto.swift
//  BookieApp
//
//  Created by dam2 on 15/4/24.
//

import SwiftUI

struct ViewRegUserFoto: View {
    
    @EnvironmentObject var userData: FuncionLogin
    
    
    var body: some View {
        
        NavigationStack{
            
            ZStack{
                
                Image(ImageResource.defaultAvatar)
                    
                Button(action: {
                    
                }){
                    Image(systemName: "pencil")
                        .foregroundColor(.black)
                        .frame(width: 50, height: 40)
                        .font(.title)
                        .background(Color.button)
                        .cornerRadius(10.0)
                        .padding(.leading, 100)
                        .padding(.top, 150)
                }
                
            }
            
            
            Label("Nombre de usuario", systemImage: "")
                .labelStyle(.titleOnly)
                .padding(.top, 60)
                .padding(.trailing, 190)
            
            TextField("Nombre de Usuario", text: $userData.username)
                .bold()
                .padding()
                .background(Color.color)
                .cornerRadius(30)
                .padding([.leading, .trailing], 20)
                .padding(.top, 10)
            
            
            Button("Siguiente"){
                userData.register()
            }
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

#Preview {
    ViewRegUserFoto()
        .environmentObject(FuncionLogin())
}
