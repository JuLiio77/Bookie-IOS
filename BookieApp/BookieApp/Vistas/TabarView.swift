//
//  MainView.swift
//  BookieApp
//
//  Created by dam2 on 14/3/24.
//

import SwiftUI

struct TabarView: View {
    
    @State var isPresented: Bool = true
    
    var body: some View {
        
        TabView {
<<<<<<< HEAD
            InicioView()
=======
            InicioView(funciones: UserService(), modelUser: ModelUser())
>>>>>>> jose
                .tabItem {
                    Label("Inicio", systemImage: "house")
                }
            BibliotecaView()
                .tabItem {
                    Label("Biblioteca", systemImage: "book")
                }
            
            SubirLibroView()
                .tabItem {
                    Label("Subir", systemImage: "plus.app.fill")
                }
            
            MainViewBuzon()
                .tabItem {
                    Label("Buzón", systemImage: "message")
                }
<<<<<<< HEAD
            
            
            PerfilView()
                .tabItem {
                    Label("Perfil", systemImage: "person.fill")
                }
=======
            PerfilView(modelUser: ModelUser())
                .tabItem {
                    Label("Perfil", systemImage: "person.fill")
                }            
>>>>>>> jose
        }
        .accentColor(Color.button)
    }
}

#Preview {
    TabarView()
        .environmentObject(LibrosFavoritos())
}
