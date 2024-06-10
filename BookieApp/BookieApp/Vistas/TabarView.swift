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
<<<<<<< HEAD
            InicioView()
=======
            InicioView(funciones: UserService(), modelUser: ModelUser())
>>>>>>> jose
=======
            InicioView(funciones: UserService(), modelUser: ModelUser())
>>>>>>> letizia
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
=======
            
            
            PerfilView(modelUser: ModelUser())
                .tabItem {
                    Label("Perfil", systemImage: "person.fill")
                }
>>>>>>> letizia
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
