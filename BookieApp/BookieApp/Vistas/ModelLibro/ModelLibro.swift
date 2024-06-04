//
//  ModelLibro.swift
//  BookieApp
//
//  Created by dam2 on 1/4/24.
//

import Foundation

struct ModelLibro: Codable {
    
    var titulo, autor: String
    var numeroPaginas: Int
    var genero, foto, sinopsis, editorial: String
    var usuario: String
    var userID: Int

}

#if DEBUG
let ejemplo = ModelLibro(titulo: "El libro infinito", autor: "Alfonso Perez", numeroPaginas: 314, genero: "Indefinido", foto: "una foto cualquiera", sinopsis: "No sera la sinopsis mas larga pero tampoco las mas corta", editorial: "la que yo quiera", usuario: "Ratoncito Perez", userID: 1)
#endif
