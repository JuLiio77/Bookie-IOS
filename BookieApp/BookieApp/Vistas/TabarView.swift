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
            
            MainViewBuzon()
                .tabItem {
                    Label("Buzon", systemImage: "message")
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
