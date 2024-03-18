//
//  MainView.swift
//  BookieApp
//
//  Created by dam2 on 14/3/24.
//

import SwiftUI

struct MainView: View {
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
        }
        .accentColor(Color.button)
    }
}

#Preview {
    MainView()
}
