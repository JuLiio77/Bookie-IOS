//
//  OpcionesPerfilAjeno.swift
//  BookieApp
//
//  Created by dam2 on 17/4/24.
//

import SwiftUI

struct OpcionesPerfilAjeno: View {
    @Binding var isPresented: Bool
    @State private var contactarAlert = false
    @State private var bloquearAlert = false
    
    @EnvironmentObject var color: ColorListAjustes


    var body: some View {
        ZStack{
            NavigationStack {
       
               List {
                   Section{
                       Button(action: {
                           self.contactarAlert = true
                       }) {
                           Text("Contactar")
                               .foregroundStyle(Color.black)
                       }
                       .alert(isPresented: $contactarAlert) {
                           Alert(
                               title: Text("Contactar"),
                               message: Text("¡Se ha enviado una notificación de chat! Recibirás una notificación cuando el usuario acepte el mensaje "),
                               primaryButton: .destructive(Text("OK")) {
                                   // Aquí va el código para cerrar sesión
                               },
                               secondaryButton: .cancel()
                           )
                       }
                     
                       NavigationLink(destination: ReporteView()) {
                           Text("Reportar")
                       }
                      
                   }
                   
                   Section{
                       
                    

                      Button(action: {
                          self.bloquearAlert = true
                      }) {
                          Text("Bloquear")
                              .foregroundStyle(Color.red)
                      }
                      .alert(isPresented: $bloquearAlert) {
                          Alert(
                              title: Text("Bloquar"),
                              message: Text("¿Estás seguro de que quieres bloquar a este usuario?"),
                              primaryButton: .destructive(Text("Bloquear")) {
                                  // Aquí va el código para cerrar sesión
                              },
                              secondaryButton: .cancel()
                          )
                      }
                  }
   
               }
                
                
//                .scrollContentBackground(.hidden)
//                .background(color.colorFondo)
      
               .navigationBarTitle("Opciones")
               .navigationBarTitleDisplayMode(.inline)
                
                
               
                
            }
            
        }
        
    }
}

#Preview {
    OpcionesPerfilAjeno(isPresented: .constant(true))
}
