//
//  RespuestaApi.swift
//  BookieApp
//
//  Created by dam2 on 18/3/24.
//

import Foundation
import Combine

struct Book: Decodable{
    
    let volumenInfo: VolumenInfo
}

struct VolumenInfo: Codable{
    
    let title: String
    let authors: [String]
}

