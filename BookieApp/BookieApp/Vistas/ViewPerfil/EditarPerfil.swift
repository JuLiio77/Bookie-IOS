//
//  EditarPerfil.swift
//  BookieApp
//
//  Created by dam2 on 23/4/24.
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
    @State var infoUser: ModelUser
    
    @State private var showSaveAlert = false
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
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
                    .background(Color.fondo)
                    .cornerRadius(30)
                    .padding()
                
                Label("Contraseña", systemImage: "")
                    .labelStyle(.titleOnly)
                    .padding(.top, 30)
                    .padding(.trailing, 260)
                TextField("Contraseña", text: $password)
                    .bold()
                    .padding()
                    .background(Color.fondo)
                    .cornerRadius(30)
                    .padding()
                
                Divider()
                
                Label("Provincia", systemImage: "")
                    .labelStyle(.titleOnly)
                    .padding(.top, 30)
                    .padding(.trailing, 280)
                TextField("Provincia", text: $provincia)
                    .bold()
                    .padding()
                    .background(Color.fondo)
                    .cornerRadius(30)
                    .padding()
                
                Label("Ciudad", systemImage: "")
                    .labelStyle(.titleOnly)
                    .padding(.top, 30)
                    .padding(.trailing, 290)
                TextField("Ciudad", text: $ciudad)
                    .bold()
                    .padding()
                    .background(Color.fondo)
                    .cornerRadius(30)
                    .padding()
                
                Label("Codigo Postal", systemImage: "")
                    .labelStyle(.titleOnly)
                    .padding(.top, 30)
                    .padding(.trailing, 250)
                TextField("Codigo Postal", text: $codigoPostal)
                    .bold()
                    .padding()
                    .background(Color.fondo)
                    .cornerRadius(30)
                    .padding()
                
//                Label("Preferencias Literarias", systemImage: "")
//                    .labelStyle(.titleOnly)
//                    .padding(.top, 30)
//                    .padding(.trailing, 180)
//                TextField("Preferencias Literarias", text: $prefeLite)
//                    .bold()
//                    .padding()
//                    .background(Color.fondo)
//                    .cornerRadius(30)
//                    .padding()
                
                Button("Guardar Cambios") {
                       showSaveAlert = true
                        editarDatos()
                   }
                   .alert(isPresented: $showSaveAlert) {
                       Alert(
                           title: Text("Guardar Cambios"),
                           message: Text("¿Quieres guardar los cambios?"),
                           primaryButton: .default(Text("Sí")) {
                               self.presentationMode.wrappedValue.dismiss()
                           },
                           secondaryButton: .cancel(Text("No"))
                       )
                   }
                   .padding(20)
                   .padding(.horizontal, 30)
                   .background(Color.button)
                   .foregroundColor(.black)
                   .cornerRadius(20)
                   .padding([.leading, .trailing], 10)
                   .padding(.top, 75)
                  
              
                
            }
            .navigationBarTitle("Editar Perfil")
            .navigationBarTitleDisplayMode(.inline)
        }
        
    }
    
    func editarDatos(){
        
        if nombre.isEmpty || email.isEmpty || password.isEmpty || ciudad.isEmpty || provincia.isEmpty || codigoPostal.isEmpty{
            
            
        }else{
            UserDefaults.standard.setValue(nombre, forKey: "name")
            UserDefaults.standard.setValue(email, forKey: "email")
            UserDefaults.standard.setValue(password, forKey: "password")
            //UserDefaults.standard.setValue(repassword, forKey: "repassword")
            UserDefaults.standard.setValue(ciudad, forKey: "ciudad")
            UserDefaults.standard.setValue(provincia, forKey: "provincia")
            UserDefaults.standard.setValue(codigoPostal, forKey: "codigoPostal")
            //UserDefaults.standard.setValue(username, forKey: "username")
        }
    }
    
}



#Preview {
    EditarPerfil(infoUser: ModelUser())
}
