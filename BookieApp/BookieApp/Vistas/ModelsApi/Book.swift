//
//  RespuestaApi.swift
//  BookieApp
//
//  Created by dam2 on 18/3/24.
//

import Foundation
import Combine

struct Book: Decodable{
    
    let id: String
    let volumenInfo: VolumenInfo
}

struct VolumenInfo: Codable{
    
    let title: String
    let authors: [String]
    let publisher: String
    let description: String
    let isbn: String
    let categories: [String]
    let pagecount: Int
    
}

