//
//  ListaFavoritos.swift
//  BookieApp
//
//  Created by dam2 on 11/4/24.
//

import Foundation

class LibrosFavoritos: ObservableObject {
    //publicar el estado del libro favorito
    @Published var librosFav: [BookModelFavoritos] = []
    
    //Init que recupera el array de UserDefaults
    init() {
        let ids = UserDefaults.standard.array(forKey: "librosFav") as? [String] ?? []
        
        librosFav = ids.compactMap { id in
            let isFavorite = UserDefaults.standard.bool(forKey: id)
            return BookModelFavoritos(id: id, isFavorite: isFavorite)
        }
    }
    
    //Método para añadir libro a favorito (recibe id)
    //librosFavoritos.librosFav.append(book)
    func anadirFav(id: String) {
        if let book = librosFav.first(where: {$0.id == id}) {
            book.isFav = true
        } else {
            let book = BookModelFavoritos(id: id, isFavorite: true)
            librosFav.append(book)
        }
        UserDefaults.standard.set(librosFav.map { $0.id }, forKey: "librosFav")
    }

    
    //Método para eliminar libro de favoritos (recibe id)
    //librosFavoritos.librosFav.removeAll(where: { $0.id == book.id })
    func eliminarFav(id: String) {
        if let book = librosFav.first(where: { $0.id == id }) {
            book.isFav = false
            librosFav.removeAll(where: { $0.id == id })
        }
        UserDefaults.standard.set(librosFav.map { $0.id }, forKey: "librosFav")
    }
    
    //Método para buscar un libro en favoritos (recibe id, devuelve bool)
    func buscarFav(id: String) -> Bool {
        return librosFav.contains(where: { $0.id == id && $0.isFav })
    }
}
