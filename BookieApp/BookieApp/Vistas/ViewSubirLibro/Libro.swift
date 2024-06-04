//
//  Libro.swift
//  BookieApp
//
//  Created by dam2 on 20/5/24.
//

import Foundation

<<<<<<< HEAD
<<<<<<< HEAD
struct Libro: Codable {
=======
import Foundation

struct Libro: Identifiable, Codable {
    var id: Int
>>>>>>> julio
=======
struct Libro: Codable {
>>>>>>> letizia
    var titulo: String
    var autor: String
    var numeroPaginas: Int
    var sinopsis: String
    var editorial: String
    var genero: String
<<<<<<< HEAD
<<<<<<< HEAD
   // var prestado: Bool
=======
    var foto: String
    var prestado: Bool
    var filtro: [Int]
    var usuario: ModelUser2
>>>>>>> julio
=======
   // var prestado: Bool
>>>>>>> letizia
}
