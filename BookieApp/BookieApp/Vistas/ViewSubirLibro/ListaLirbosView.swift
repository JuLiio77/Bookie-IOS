//
//  ListaLirbosView.swift
//  BookieApp
//
//  Created by dam2 on 29/5/24.
//

import SwiftUI

import SwiftUI

struct ListaLibrosView: View {
    @State private var libros: [Libro] = []

    var body: some View {
        NavigationView {
            List(libros) { libro in
                VStack(alignment: .leading) {
                    Text(libro.titulo)
                        .font(.headline)
                    Text(libro.autor)
                        .font(.subheadline)
                }
            }
            .navigationBarTitle("Lista de Libros")
            .onAppear(perform: fetchLibros)
        }
    }

    func fetchLibros() {
        guard let url = URL(string: "http://localhost:8080/api/librof") else {
            return
        }

        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.setValue("Bearer \(UserDefaults.standard.string(forKey: "token") ?? "")", forHTTPHeaderField: "Authorization")

        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                if let decodedResponse = try? JSONDecoder().decode([Libro].self, from: data) {
                    DispatchQueue.main.async {
                        self.libros = decodedResponse
                    }
                }
            }
        }.resume()
    }
}

struct ListaLibrosView_Previews: PreviewProvider {
    static var previews: some View {
        ListaLibrosView()
    }
}
