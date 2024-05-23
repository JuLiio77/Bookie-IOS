//
//  LibrosFavoritos.swift
//  BookieApp
//
//  Created by dam2 on 7/5/24.
//

import Foundation

class LibrosFavoritos: ObservableObject {
    
    //publicamos el estado del libro fav
    @Published var librosFav: [BookModelFavoritos] = []
    
    private let favoritoskey = "librosfavoritos"
    
    //init para recuperar el array de userdefaults
    init() {
        self.librosFav = loadFavorites()
    }
    
    //func para añadir libro a fav
    func anadirfav(book: Book) {
        let bookmodel = BookModelFavoritos(id: book.id, book: book, isFavorite: true)
        
        librosFav.append(bookmodel)
        saveFavorites()
    }
    
    //func para eliminar libro de fav
    func eliminarfav(book: Book) {
        if let index = librosFav.firstIndex(where: { $0.book?.id == book.id }) {
            librosFav.remove(at: index)
            saveFavorites()
        }
    }
    
    //func para guardar libro fav
    func saveFavorites() {
        let encoder = JSONEncoder()
        
        if  let encoded = try? encoder.encode(librosFav.map { $0.book }) {
            UserDefaults.standard.set(encoded, forKey: favoritoskey)
        }
    }
    
    func loadFavorites() -> [BookModelFavoritos] {
        if let savedData = UserDefaults.standard.data(forKey: favoritoskey) {
            let decoder = JSONDecoder()
            
            if let decodedBooks = try? decoder.decode([Book].self, from: savedData) {
                return decodedBooks.map { BookModelFavoritos(id: $0.id, book: $0, isFavorite: true)}
            }
        }
        return []
    }
    
    func bookModelFavoritos(for book: Book) -> BookModelFavoritos {
        return librosFav.first(where: { $0.book?.id == book.id }) ?? BookModelFavoritos(id: book.id, book: book, isFavorite: false)
    }
}


