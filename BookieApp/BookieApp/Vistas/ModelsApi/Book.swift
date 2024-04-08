//
//  RespuestaApi.swift
//  BookieApp
//
//  Created by dam2 on 18/3/24.
//

import Foundation
import Combine

struct Book: Decodable, Identifiable {
    let id: String
    let volumeInfo: VolumeInfo
}

struct VolumeInfo: Codable {
    let title: String
    let authors: [String]
    let publisher: String
    let description: String
    let industryIdentifiers: [IndustryIdentifier]
    let categories: [String]
    let pageCount: Int
    //imagen
    //let imageLinks
    
    // Función auxiliar para obtener el ISBN 13
    func isbn13() -> String? {
        return industryIdentifiers.first(where: { $0.type == "ISBN_13" })?.identifier
    }
}

struct IndustryIdentifier: Codable {
    let type: String
    let identifier: String
}
