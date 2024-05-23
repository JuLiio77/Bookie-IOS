//
//  Libro.swift
//  BookieApp
//
//  Created by dam2 on 20/5/24.
//

import Foundation


struct Libro: Codable, Identifiable {
    let id = UUID()
    let titulo: String
    let autor: String
    let numeroPaginas: Int
    let sinopsis: String
    let editorial: String
    let genero: String
}