//
//  UserDefaultsFavoritos.swift
//  BookieApp
//
//  Created by dam2 on 11/4/24.
//

import Foundation

class BookModelFavoritos: ObservableObject, Identifiable {
    let id: String
    var book: Book?
    
    @Published var isFavorite: Bool
    
    init(id: String, book: Book? = nil , isFavorite: Bool = false) {
        self.id = id
        self.book = book
        self.isFavorite = isFavorite
    }
    
    init(id: String, book: Book) {
        self.id = id
        self.book = book
        self.isFavorite = UserDefaults.standard.bool(forKey: id)
    }
}

extension BookModelFavoritos {
    
    //guardar favoritos como persistente
    var isFav: Bool {
        
        get {
//            UserDefaults.standard.bool(forKey: id)
            isFavorite
        }
        
        set {
            isFavorite = newValue
            UserDefaults.standard.set(newValue, forKey: id)
        }
    }
}
