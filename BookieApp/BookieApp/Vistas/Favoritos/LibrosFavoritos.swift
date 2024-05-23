//
//  LibrosFavoritos.swift
//  BookieApp
//
//  Created by dam2 on 7/5/24.
//

import Foundation

class LibrosFavoritos: ObservableObject {
    //publicar el estado del libro favorito
    @Published var librosFav: [BookModelFavoritos] = []
    
    //Init que recupera el array de UserDefaults
    init() {
        let ids = UserDefaults.standard.array(forKey: "librosFav") as? [String] ?? []
        
        librosFav = ids.compactMap { id in
            if let bookData = UserDefaults.standard.data(forKey: id),
               let book = try? JSONDecoder().decode(Book.self, from: bookData) {
                return BookModelFavoritos(id: id, book: book, isFavorite: true)
            } else {
                return nil
            }
        }
    }
    
    //Método para añadir libro a favorito
    func anadirFav(book: Book) {
        if let index = librosFav.firstIndex(where: { $0.book?.id == book.id }) {
            librosFav[index].isFav = true
        } else {
            let bookmodelFav = BookModelFavoritos(id: book.id, book: book, isFavorite: true)
            librosFav.append(bookmodelFav)
        }
        if let bookData = try? JSONEncoder().encode(book) {
            UserDefaults.standard.set(bookData, forKey: book.id)
        }
    }

    
    //Método para eliminar libro de favoritos
    func eliminarFav(book: Book) {
        if let index = librosFav.firstIndex(where: { $0.book?.id == book.id }) {
            librosFav[index].isFav = false
            librosFav.remove(at: index)
        }
        UserDefaults.standard.removeObject(forKey: book.id)
    }
    
    //Método para buscar un libro en favoritos
    func buscarFav(id: String) -> Bool {
        return librosFav.contains(where: { $0.id == id && $0.isFav })
    }
    
    //funcion para actualizar el libro favorito
    /*func actualizarFav(book: Book, isFavorite: Bool) {
        if let index = librosFav.firstIndex(where: { $0.book?.id == book.id }) {
            librosFav[index].isFav = isFavorite
        } else if isFavorite {
            let bookmodelFav = BookModelFavoritos(id: book.id, book: book, isFavorite: true)
            librosFav.append(bookmodelFav)
        }
        UserDefaults.standard.set(librosFav.map { $0.id }, forKey: "librosFav")
    }*/
    
    func bookModelFavoritos(for book: Book) -> BookModelFavoritos {
        return librosFav.first(where: { $0.book?.id == book.id }) ?? BookModelFavoritos(id: book.id, book: book)
    }
}


