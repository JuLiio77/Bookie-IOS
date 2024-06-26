//
//  AjustesPerfil.swift
//  BookieApp
//
//  Created by dam2 on 11/4/24.
//

import SwiftUI

struct AjustesPerfil: View {
    
    @Binding var isPresented: Bool
    @State private var showDeleteAlert = false
       @State private var showLogoutAlert = false
    @State var infoUser: ModelUser

    var body: some View {
        ZStack{
            NavigationView {
               
                       List {
                           Section{
                               NavigationLink(destination: EditarPerfil()) {
                                   Text("Editar Perfil")
                               }
                               NavigationLink(destination: ListaLibrosFavoritos()) {
                                   Text("Favoritos")
                               }
                               NavigationLink(destination: TerminosUsoView()) {
                                   Text("Ir a terminos de uso")
                               }
                           }
                           
                           Section{
                              Button(action: {
                                  self.showDeleteAlert = true
                              }) {
                                  Text("Eliminar Cuenta")
                              }
                              .alert(isPresented: $showDeleteAlert) {
                                  Alert(
                                      title: Text("Alert"),
                                      message: Text("¿Estás seguro de que quieres eliminar tu cuenta?"),
                                      primaryButton: .destructive(Text("Eliminar")) {
                                          // Aquí va el código para eliminar la cuenta
                                      },
                                      secondaryButton: .cancel()
                                  )
                              }

                              Button(action: {
                                  self.showLogoutAlert = true
                              }) {
                                  Text("Cerrar Sesión")
                                      .foregroundStyle(Color.red)
                              }
                              .alert(isPresented: $showLogoutAlert) {
                             Alert(
                                 title: Text("Alert"),
                                 message: Text("¿Estás seguro de que quieres cerrar sesión?"),
                                 primaryButton: .destructive(Text("Cerrar Sesión")) {
                                     
                                     //codigo para cerrar sesión
                                     
                                     //borramos los datos guardados en userdefault
                                     UserDefaults.standard.removeObject(forKey: "username")
                                     UserDefaults.standard.removeObject(forKey: "password")
                                     UserDefaults.standard.removeObject(forKey: "repassword")
                                     UserDefaults.standard.removeObject(forKey: "toogle")
                                     UserDefaults.standard.removeObject(forKey: "token")
                                     UserDefaults.standard.removeObject(forKey: "email")
                                     UserDefaults.standard.removeObject(forKey: "provincia")
                                     UserDefaults.standard.removeObject(forKey: "codigoPostal")
                                     UserDefaults.standard.removeObject(forKey: "ciudad")
                                     UserDefaults.standard.removeObject(forKey: "preferencia")
                                 
                                     //sincronizamos userdefaults
                                     UserDefaults.standard.synchronize()
                     
                                     //cerramos la vista ajustesperfil
                                     isPresented = false

                                     //basicamente encontramos la vista principal para remplazar su rootviewcontroller con una instancia de uihostingcontroller que contiene la vista principal de la aplicación
                                     if let windowscene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
                                         if let window = windowscene.windows.first {
                                             window.rootViewController = UIHostingController(rootView: ContentView())
                                             window.makeKeyAndVisible()
                                         }
                                     }
                                 },
                                 secondaryButton: .cancel()
                             )
                         }
                     }
                 }
                 .navigationBarTitle("Ajustes")
                 .navigationBarTitleDisplayMode(.inline)
             }
         }
     }
 }

 #Preview {
     AjustesPerfil(isPresented: .constant(true), infoUser: ModelUser())
         .environmentObject(LibrosFavoritos())
         .environmentObject(FuncionLogin())
 }
