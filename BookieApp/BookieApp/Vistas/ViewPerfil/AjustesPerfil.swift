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
    
    @EnvironmentObject var coloor: ColorListAjustes


    var body: some View {
        ZStack{
            NavigationStack {
       
               List {
                   Section{
                       NavigationLink(destination: EditarPerfil()) {
                           Text("Editar Perfil")
                       }
                       NavigationLink(destination: LibrosFavoritos()) {
                           Text("Favoritos")
                       }
                       NavigationLink(destination: TerminosUso()) {
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
                              title: Text("Eliminar Cuenta"),
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
                              title: Text("Cerrar Sesión"),
                              message: Text("¿Estás seguro de que quieres cerrar sesión?"),
                              primaryButton: .destructive(Text("Cerrar Sesión")) {
                                  // Aquí va el código para cerrar sesión
                              },
                              secondaryButton: .cancel()
                          )
                      }
                  }
   
               }
                
                
                .scrollContentBackground(.hidden)
                .background(coloor.colorFondo)
      
               .navigationBarTitle("Ajustes")
               .navigationBarTitleDisplayMode(.inline)
                
                
               
                
            }
            
        }
        
    }
}
#Preview {
    AjustesPerfil(isPresented: .constant(true))
        .environmentObject(ColorListAjustes())

}
