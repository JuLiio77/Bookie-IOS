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
}

extension BookModelFavoritos {
    
    //guardar favoritos como persistente
    var isFav: Bool {
        
        get {
            UserDefaults.standard.bool(forKey: id)
        }
        
        set {
            UserDefaults.standard.set(newValue, forKey: id)
        }
    }
}
