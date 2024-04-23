//
//  libroModel.swift
//  BookieApp
//
//  Created by dam2 on 21/3/24.
//

import Combine
import SwiftUI

class BookModel: ObservableObject {
    
    @Published public private(set) var libros: [Book] = []
    @Published public private(set) var imagenLibro: String = ""
    @Published public private(set) var nombreLibro: String = ""
    @Published public private(set) var nombreAutor: String = ""
    
    //guardar historial de busqueda api
    
    private var suscripcion = Set<AnyCancellable>()
    
    public func onAppear() {
        
        BookService.shared.fetch(query: "a")
            .sink { completion in
                switch completion {
                case .finished:
                    break
                    
                case .failure(let error):
                    print("Error: \(error)")
                }
            } receiveValue: { [weak self] books in
                self?.libros = books
                
                if let book = books.first, let author = book.volumeInfo.authors.first, let image = book.volumeInfo.imageLinks?.smallThumbnail {
                    self?.nombreLibro = book.volumeInfo.title
                    self?.nombreAutor = author
                    self?.imagenLibro = image
                }
            }
            .store(in: &suscripcion)
    }
    
    //funcion para buscar con el buscador
    func buscarlibro(nombre: String) {
       
        
    }
    
    func agregarhistorial(buqueda: String) {
        
    }
}
