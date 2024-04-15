//
//  EditarPerfil.swift
//  BookieApp
//
//  Created by dam2 on 15/4/24.
//

import SwiftUI

struct EditarPerfil: View {
    @State var email = ""
    @State var nombre = ""
    @State var password = ""
    @State var provincia = ""
    @State var ciudad = ""
    @State var codigoPostal = ""
    @State var prefeLite = ""
    
    var body: some View {
        NavigationView{
            ScrollView{
                ZStack{
                    Image(ImageResource.defultAvatar)
                    
                    Button(action: {
                        
                    }){
                        Image(systemName: "pencil")
                            .foregroundColor(.black)
                            .frame(width: 50, height: 40)
                            .font(.title)
                            .background(Color.button)
                            .cornerRadius(10.0)
                            .padding(.leading, 100)
                            .padding(.top, 120)
                    }
                    .padding(.top, 100)
                }
                
                
                Label("Nombre", systemImage: "")
                    .labelStyle(.titleOnly)
                    .padding(.top, 30)
                    .padding(.trailing, 280)
                TextField("Nombre", text: $nombre)
                    .bold()
                    .padding()
                    .background(Color.color)
                    .cornerRadius(30)
                    .padding()
                
                Label("Contraseña", systemImage: "")
                    .labelStyle(.titleOnly)
                    .padding(.top, 30)
                    .padding(.trailing, 280)
                TextField("Contraseña", text: $password)
                    .bold()
                    .padding()
                    .background(Color.color)
                    .cornerRadius(30)
                    .padding()
                
                Divider()
                
                Label("Nombre", systemImage: "")
                    .labelStyle(.titleOnly)
                    .padding(.top, 30)
                    .padding(.trailing, 280)
                TextField("Nombre", text: $provincia)
                    .bold()
                    .padding()
                    .background(Color.color)
                    .cornerRadius(30)
                    .padding()
                
                Label("Nombre", systemImage: "")
                    .labelStyle(.titleOnly)
                    .padding(.top, 30)
                    .padding(.trailing, 280)
                TextField("Nombre", text: $ciudad)
                    .bold()
                    .padding()
                    .background(Color.color)
                    .cornerRadius(30)
                    .padding()
                
                Label("Nombre", systemImage: "")
                    .labelStyle(.titleOnly)
                    .padding(.top, 30)
                    .padding(.trailing, 280)
                TextField("Nombre", text: $codigoPostal)
                    .bold()
                    .padding()
                    .background(Color.color)
                    .cornerRadius(30)
                    .padding()
                
                Label("Nombre", systemImage: "")
                    .labelStyle(.titleOnly)
                    .padding(.top, 30)
                    .padding(.trailing, 280)
                TextField("Nombre", text: $prefeLite)
                    .bold()
                    .padding()
                    .background(Color.color)
                    .cornerRadius(30)
                    .padding()
                
            }
            .navigationBarTitle("Editar Pérfil")
            .navigationBarTitleDisplayMode(.inline)
        }
        
    }
    
}

#Preview {
    EditarPerfil()
}
