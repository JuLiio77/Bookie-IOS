//
//  Chats.swift
//  BookieApp
//
//  Created by dam2 on 4/4/24.
//

import Foundation

struct ModelChat: Codable{
    var id: Int
    var usuarioEmisor: Int
    var usuarioReceptor: Int
    //var mensajes: [ModelMensaje]
}
