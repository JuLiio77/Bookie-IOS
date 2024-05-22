//
//  SubirLibroRequest.swift
//  BookieApp
//
//  Created by dam2 on 30/4/24.
//

import Foundation
import SwiftUI

struct SubirLibroRequest: Encodable {
    var id: Int
    var titulo: String
    var autor: String
    var numeroPaginas: Int
    var editorial: String
    var sinopsis: String
    var genero: String
    var foto: String
    var usuario: Int{
        Int(id)
    }
}


