//
//  ListaFavoritos.swift
//  BookieApp
//
//  Created by dam2 on 11/4/24.
//

import Foundation

class LibrosFavoritos: ObservableObject {
    //publicar el estado del libro favorito
    @Published var librosFav: [Book] = []
}
