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
    
    
    static func == (lhs: Libro, rhs: Libro)-> Bool{
        return lhs.libroId == rhs.libroId
    }
}


//struct ModelUser2: Identifiable, Codable {
//    var id: Int
//}

