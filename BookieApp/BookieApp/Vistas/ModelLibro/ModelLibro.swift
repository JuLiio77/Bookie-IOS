//
//  ModelLibro.swift
//  BookieApp
//
//  Created by dam2 on 1/4/24.
//

import Foundation

struct ModelLibro: Encodable, Decodable{
    var id: Int
    var titulo: String
    var autor: String
    var paginas: Int
    var genero: String
    var editorial: String
    var sinopsis: String
    var filros: [String]
}
