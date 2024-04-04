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
            InicioView()
                .tabItem {
                    Label("Inicio", systemImage: "house")
                }
            BibliotecaView()
                .tabItem {
                    Label("Biblioteca", systemImage: "book")
                }
    
            SubirLibroView()
                .tabItem {
                    Label("Buzon", systemImage: "plus.app.fill")
                }
            
            MainViewBuzon()
                .tabItem {
                    Label("Perfil", systemImage: "message")
                }
            PerfilView()
                .tabItem {
                    Label("Perfil", systemImage: "person.fill")
                }
        }
        .accentColor(Color.button)
    }
}

#Preview {
    TabarView()
}
