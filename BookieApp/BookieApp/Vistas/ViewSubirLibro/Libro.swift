//
//  Libro.swift
//  BookieApp
//
//  Created by dam2 on 20/5/24.
//

import Foundation


struct Libro: Identifiable, Codable {
    let id: Int
    let titulo: String
    let autor: String
    let numeroPaginas: Int
    let sinopsis: String
    let editorial: String
    let genero: String
    let foto: String
    let prestado: Bool
    let filtro: Set<Int>
    let usuario: ModelUser2
}
