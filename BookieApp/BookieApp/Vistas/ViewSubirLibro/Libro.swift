//
//  Libro.swift
//  BookieApp
//
//  Created by dam2 on 20/5/24.
//

import Foundation

<<<<<<< HEAD
struct Libro: Codable {
=======
import Foundation

class Libro: Codable, ObservableObject {
    var libroId: Int
>>>>>>> jose
    var titulo: String
    var autor: String
    var numeroPaginas: Int
    var sinopsis: String
    var editorial: String
    var genero: String
<<<<<<< HEAD
   // var prestado: Bool
}
=======
    var foto: String
    var prestado: Bool
    var filtro: [Int]
    var usuario: ModelUser
    var userId: Int
}



//struct ModelUser2: Identifiable, Codable {
//    var id: Int
//}

>>>>>>> jose
