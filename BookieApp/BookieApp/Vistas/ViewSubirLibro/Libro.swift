//
//  Libro.swift
//  BookieApp
//
//  Created by dam2 on 20/5/24.
//

import Foundation

struct Libro: Codable {
    var titulo: String
    var autor: String
    var numeroPaginas: Int
    var sinopsis: String
    var editorial: String
    var genero: String
   // var prestado: Bool
}
