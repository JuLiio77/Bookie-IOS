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
            }
            .store(in: &suscripcion)
    }
}
