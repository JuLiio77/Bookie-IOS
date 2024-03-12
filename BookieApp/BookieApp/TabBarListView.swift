//
//  TabBarListView.swift
//  BookieApp
//
//  Created by dam2 on 12/3/24.
//

import SwiftUI

struct TabBarListView: View {
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
                    Label("Subir", systemImage: "plus.circle")
                }
            BuzonView()
                .tabItem {
                    Label("Buzón", systemImage: "envelope")
                }
            PerfilView()
                .tabItem {
                    Label("Perfil", systemImage: "person")
                }
        }
        .accentColor(Color.button) // Cambia el color aquí según desees

    }
}

#Preview {
    TabBarListView()
}
