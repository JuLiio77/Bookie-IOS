//
//  Message.swift
//  BookieApp
//
//  Created by dam2 on 5/6/24.
//

import Foundation

struct Message: Identifiable, Equatable, Codable {
    let id = UUID()
    let mensaje: String
    let enviarMensajeUsuario: Bool
}
