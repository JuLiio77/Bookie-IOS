//
//  Libro.swift
//  BookieApp
//
//  Created by dam2 on 20/5/24.
//

import Foundation

import Foundation

class Libro: Codable, ObservableObject {
    var libroId: Int? = 0
    var titulo: String? = ""
    var autor: String? = ""
    var numeroPaginas: Int? = 0
    var sinopsis: String? = ""
    var editorial: String? = ""
    var genero: String? = ""
    var foto: String? = ""
    var prestado: Bool? = false
    var filtro: [Int]? = [0]
    var usuario: ModelUser?
    var userId: Int? = 0
    
    init(){}
}


//struct ModelUser2: Identifiable, Codable {
//    var id: Int
//}

