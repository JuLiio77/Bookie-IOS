//
//  Libros.swift
//  BookieApp
//
//  Created by dam2 on 6/6/24.
//

import Foundation

struct Libros: Codable, Identifiable {
    
    let id: Int
    let title: String
    let author: String
    let publisher: String
    let pages: Int
    let genre: String
    let synopsis: String
    let user: String
    
    
}
