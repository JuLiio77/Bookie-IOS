//
//  Libro.swift
//  BookieApp
//
//  Created by dam2 on 20/5/24.
//

import Foundation

import Foundation

class Libro: Codable, ObservableObject {
    var libroId: Int
    var titulo: String
    var autor: String
    var numeroPaginas: Int
    var sinopsis: String
    var editorial: String
    var genero: String
    var foto: String
    var prestado: Bool
    var filtro: [Int]
    var usuario: ModelUser
    var userId: Int
}



//struct ModelUser2: Identifiable, Codable {
//    var id: Int
//}

