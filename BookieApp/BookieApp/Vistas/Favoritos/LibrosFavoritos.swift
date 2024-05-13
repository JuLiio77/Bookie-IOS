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
            
            if let bookData = UserDefaults.standard.data(forKey: id) {
                
//                do {
                    let book = try? JSONDecoder().decode(Book.self, from: bookData)
                    print("Libro recuperado de favoritos: \(book?.volumeInfo.title ?? "")")
                    
                    return BookModelFavoritos(id: id, book: book, isFavorite: true)
                    
//                } catch {
//                    print("Error al decodificar el libro: \(error)")
//                    return nil
//                }
            } else {
                print("Error al decodificar el libro: \(id)")
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
            print("Datos del libro codificados: \(bookData)")
            UserDefaults.standard.set(bookData, forKey: book.id)
            UserDefaults.standard.synchronize()
        }
        //comprobar que el libro se añade a fav
        print("Libro añadido a favoritos: \(book.volumeInfo.title)")
    }

    //Método para eliminar libro de favoritos
    func eliminarFav(book: Book) {
        if let index = librosFav.firstIndex(where: { $0.book?.id == book.id }) {
            librosFav[index].isFav = false
            librosFav.remove(at: index)
        }
        UserDefaults.standard.removeObject(forKey: book.id)
        UserDefaults.standard.synchronize()
        
        //comprobar que el libro se elimina de fav
        print("Libro eliminado de favoritos: \(book.volumeInfo.title)")
    }
    
    //Método para buscar un libro en favoritos
    func buscarFav(id: String) -> Bool {
        return librosFav.contains(where: { $0.id == id && $0.isFav })
    }
    
    func bookModelFavoritos(for book: Book) -> BookModelFavoritos {
        return librosFav.first(where: { $0.book?.id == book.id }) ?? BookModelFavoritos(id: book.id, book: book)
    }
}
