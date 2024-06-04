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
    
    @State private var showSaveAlert = false
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView{
            ScrollView{
                ZStack{
                    Image(ImageResource.thriller)
                    
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
<<<<<<< HEAD
                    .background(Color.button)
=======
                    .background(Color.fondo)
>>>>>>> julio
                    .cornerRadius(30)
                    .padding()
                
                Label("Contraseña", systemImage: "")
                    .labelStyle(.titleOnly)
                    .padding(.top, 30)
                    .padding(.trailing, 260)
                TextField("Contraseña", text: $password)
                    .bold()
                    .padding()
<<<<<<< HEAD
                    .background(Color.button)
=======
                    .background(Color.fondo)
>>>>>>> julio
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
<<<<<<< HEAD
                    .background(Color.button)
=======
                    .background(Color.fondo)
>>>>>>> julio
                    .cornerRadius(30)
                    .padding()
                
                Label("Ciudad", systemImage: "")
                    .labelStyle(.titleOnly)
                    .padding(.top, 30)
                    .padding(.trailing, 290)
                TextField("Ciudad", text: $ciudad)
                    .bold()
                    .padding()
<<<<<<< HEAD
                    .background(Color.button)
=======
                    .background(Color.fondo)
>>>>>>> julio
                    .cornerRadius(30)
                    .padding()
                
                Label("Codigo Postal", systemImage: "")
                    .labelStyle(.titleOnly)
                    .padding(.top, 30)
                    .padding(.trailing, 250)
                TextField("Codigo Postal", text: $codigoPostal)
                    .bold()
                    .padding()
<<<<<<< HEAD
                    .background(Color.button)
=======
                    .background(Color.fondo)
>>>>>>> julio
                    .cornerRadius(30)
                    .padding()
                
                Label("Preferencias Literarias", systemImage: "")
                    .labelStyle(.titleOnly)
                    .padding(.top, 30)
                    .padding(.trailing, 180)
                TextField("Preferencias Literarias", text: $prefeLite)
                    .bold()
                    .padding()
<<<<<<< HEAD
                    .background(Color.button)
=======
                    .background(Color.fondo)
>>>>>>> julio
                    .cornerRadius(30)
                    .padding()
                
                Button("Guardar Cambios") {
                       showSaveAlert = true
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
    
}

#Preview {
    EditarPerfil()
}
