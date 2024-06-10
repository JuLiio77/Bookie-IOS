//
//  LibroUsuario.swift
//  BookieApp
//
//  Created by dam2 on 5/6/24.
//

import Foundation

struct LibroUsuario: Codable {
    var titulo: String = ""
    var autor: String = ""
    var numeroPaginas: Int  = 0
    var genero: String = ""
    var foto: String = ""
    var sinopsis: String = ""
    var editorial: String = ""
    var prestado: Bool = false
    var filtro: [Int] = []
    var usuario: String = ""
    var userId: Int = 0
    var libroId: Int = 0
}
