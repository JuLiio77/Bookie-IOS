//
//  libroModel.swift
//  BookieApp
//
//  Created by dam2 on 21/3/24.
//

import Combine

class BookModel: ObservableObject{
    
    @Published public private(set) var libros: [Book] = []
    
    private var suscripcion = Set<AnyCancellable>()
    
    public func onAppear(){
        
       // .suscripcion = BookService.shared.fetch(query: "a")
    }
}

