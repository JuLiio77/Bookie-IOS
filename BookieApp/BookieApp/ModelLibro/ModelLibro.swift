//
//  ModelLibro.swift
//  BookieApp
//
//  Created by dam2 on 1/4/24.

import Foundation

struct ModelLibro: Codable {
    let titulo, autor: String
    let numeroPaginas: Int
    let genero, foto, sinopsis, editorial: String
    let usuario: String
    let userID: Int

}

