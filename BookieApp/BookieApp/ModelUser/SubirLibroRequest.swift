//
//  SubirLibroRequest.swift
//  BookieApp
//
//  Created by dam2 on 30/4/24.
//

import Foundation
import SwiftUI

struct SubirLibroRequest: Encodable, Decodable{
    
    var titulo: String
    var autor: String
    var numeroPaginas: String
 // var foto: Image
    var sinopsis: String
    var editorial: String

    
}

