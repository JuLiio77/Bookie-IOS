//
//  libroModel.swift
//  BookieApp
//
//  Created by dam2 on 21/3/24.
//

import Combine
import SwiftUI

class BookModel: ObservableObject {
    
    private var bookservice = BookService()
    
    @Published public private(set) var libros: [Book] = []
    @Published public private(set) var imagenLibro: String = ""
    @Published public private(set) var nombreLibro: String = ""
    @Published public private(set) var nombreAutor: String = ""
    
    private var suscripcion = Set<AnyCancellable>()
    
    public func onAppear() {
        fetchBooks(query: "a")
        fetchBooks(query: "c")
        fetchBooks(query: "d")
        fetchBooks(query: "f")
        fetchBooks(query: "j")
        fetchBooks(query: "l")
        fetchBooks(query: "m")
        fetchBooks(query: "p")
    }
    
    private func fetchBooks(query: String) {
        
        BookService.shared.fetch(query: query)
            .sink { completion in
                switch completion {
                case .finished:
                    break
                    
                case .failure(let error):
                    print("Error: \(error)")
                    return
                }
            } receiveValue: { [weak self] books in
                self?.libros.append(contentsOf: books)
                
                if let book = books.first, let author = book.volumeInfo.authors?.first, let image = book.volumeInfo.imageLinks?.smallThumbnail {
                    self?.nombreLibro = book.volumeInfo.title
                    self?.nombreAutor = author
                    self?.imagenLibro = image
                }
            }
            .store(in: &suscripcion)
    }
}
