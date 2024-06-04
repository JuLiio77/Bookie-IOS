//
//  MainView.swift
//  BookieApp
//
//  Created by dam2 on 14/3/24.
//

import SwiftUI

struct TabarView: View {
    
<<<<<<< HEAD
    @State var isPresented: Bool = true
    
=======
>>>>>>> jose
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
            
<<<<<<< HEAD
            SubirLibroView()
=======
            SubirLibroView(userData: FuncionLogin())
>>>>>>> jose
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
            ListaLibrosView()
               .tabItem {
                   Label("Libros", systemImage: "book.fill")
               }
//            PerfilView(modelUser: ModelUser())
//                .tabItem {
//                    Label("Perfil", systemImage: "person.fill")
//                }            
>>>>>>> jose
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
