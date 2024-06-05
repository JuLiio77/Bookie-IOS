//
//  MainView.swift
//  BookieApp
//
//  Created by dam2 on 14/3/24.
//

import SwiftUI

struct TabarView: View {
    
    var body: some View {
        
        TabView {
<<<<<<< HEAD
            InicioView(modelUser: ModelUser())
=======
            InicioView(funciones: UserService(), modelUser: ModelUser())
>>>>>>> origin/letizia
                .tabItem {
                    Label("Inicio", systemImage: "house")
                }
            BibliotecaView()
                .tabItem {
                    Label("Biblioteca", systemImage: "book")
                }
            
            SubirLibroView(userData: FuncionLogin())
                .tabItem {
                    Label("Subir", systemImage: "plus.app.fill")
                }
            
            MainViewBuzon()
                .tabItem {
                    Label("Buzón", systemImage: "message")
                }
<<<<<<< HEAD
        
=======
            
            
>>>>>>> origin/letizia
            PerfilView(modelUser: ModelUser())
                .tabItem {
                    Label("Perfil", systemImage: "person.fill")
                }            
        }
        .accentColor(Color.button)
        .background(Color.button)
        .navigationBarBackButtonHidden(false)
    }
}

#Preview {
    TabarView()
        .environmentObject(LibrosFavoritos())
}
