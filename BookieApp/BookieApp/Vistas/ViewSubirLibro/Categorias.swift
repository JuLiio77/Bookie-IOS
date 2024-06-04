//
//  Categorias.swift
//  BookieApp
//
//  Created by dam2 on 20/5/24.
//

import Foundation

struct Categorias: Identifiable, Codable {
    
    var id = UUID()
    var nombre: String
    var imagen: String
    
    init(nombre: String, imagen: String) {
        self.id = UUID()
        self.nombre = nombre
        self.imagen = imagen
    }
}
