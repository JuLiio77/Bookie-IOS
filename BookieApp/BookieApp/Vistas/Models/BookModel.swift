//
//  libroModel.swift
//  BookieApp
//
//  Created by dam2 on 21/3/24.
//

import Combine

class BookModel: ObservableObject{
    
    @Published public private(set) var books: [Book] = []
    
    private var suscripcion = Set<AnyCancellable>()
    
    
}

