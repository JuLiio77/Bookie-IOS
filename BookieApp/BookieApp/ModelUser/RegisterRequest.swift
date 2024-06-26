//
//  RegisterRequest.swift
//  BookieApp
//
//  Created by dam2 on 4/4/24.
//

import Foundation

struct RegisterRequest: Encodable, Decodable{
    
    var rol: String = "ROLE_USER"
    var nombre: String
    var username: String
    var password: String
    var email: String
    var ciudad: String
    var provincia: String
    var codigoPostal: String
    var foto: String
    var reportado: Bool
    var token: String
}
