//
//  ListaLirbosView.swift
//  BookieApp
//
//  Created by dam2 on 30/5/24.
//

import SwiftUI

struct ListaLibrosView: View {
    @State private var libros = [Libro]()
    
    var body: some View {
        NavigationView {
            List(libros) { libro in
                LibroCeldaView(libro: libro)
            }
            .navigationBarTitle("Libros Subidos")
            .onAppear {
                cargarLibros()
            }
        }
    }

  
}
func cargarLibros() {
    guard let url = URL(string: "http://localhost:8080/api/libro") else { return }
    
    var request = URLRequest(url: url)
    request.httpMethod = "GET"

    if let authToken = UserDefaults.standard.string(forKey: "token") {
        request.setValue("Bearer \(authToken)", forHTTPHeaderField: "Authorization")
        print("Token de autenticación: \(authToken)")
    } else {
        print("No se encontró el token de autenticación")
    }
    
    URLSession.shared.dataTask(with: request) { data, response, error in
        if let error = error {
            print("Error en la solicitud: \(error.localizedDescription)")
            return
        }

        if let httpResponse = response as? HTTPURLResponse {
            print("Código de estado HTTP: \(httpResponse.statusCode)")
        }

    
    }.resume()
}

#Preview {
    ListaLibrosView()
}
