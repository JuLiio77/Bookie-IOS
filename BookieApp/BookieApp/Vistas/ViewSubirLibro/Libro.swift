//
//  Libro.swift
//  BookieApp
//
//  Created by dam2 on 20/5/24.
//

import Foundation

import Foundation

struct Libro: Codable {
    let titulo: String
    let autor: String
    let numeroPaginas: Int
    let genero: String
    let foto: String
    let sinopsis: String
    let editorial: String
    let prestado: Bool
    let filtro: [Int]
    let usuario: ModelUser
    let userId: Int
    let libroId: Int
}
    
//    var libroId: Int? = 0
//    var titulo: String? = ""
//    var autor: String? = ""
//    var numeroPaginas: Int? = 0
//    var sinopsis: String? = ""
//    var editorial: String? = ""
//    var genero: String? = ""
//    var foto: String? = ""
//    var prestado: Bool? = false
//    var filtro: [Int]? = [0]
//    var usuario: ModelUser?
//    var userId: Int?



//struct ModelUser2: Identifiable, Codable {
//    var id: Int
//}

