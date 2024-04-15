//
//  UserDefaultsFavoritos.swift
//  BookieApp
//
//  Created by dam2 on 11/4/24.
//

import Foundation

class BookModelFavoritos: ObservableObject, Identifiable {
    let id: String
    @Published var isFavorite: Bool
    
    init(id: String, isFavorite: Bool = false) {
            self.id = id
            self.isFavorite = isFavorite
    }
    
    init(id: String) {
        self.id = id
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
