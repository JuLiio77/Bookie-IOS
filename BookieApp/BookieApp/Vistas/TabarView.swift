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
            InicioView(modelUser: ModelUser())
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
=======
            ListaLibrosView()
                .tabItem {
                    Label("Buzón", systemImage: "message")
                }
            PerfilView(modelUser: ModelUser())
>>>>>>> julio
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
