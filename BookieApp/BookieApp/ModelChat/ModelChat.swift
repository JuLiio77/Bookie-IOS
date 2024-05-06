//
//  Chats.swift
//  BookieApp
//
//  Created by dam2 on 4/4/24.
//

import Foundation

struct ModelChat: Decodable{
    var id: Int
    var usuarioEmisor: ModelUser
    var usuarioReceptor: ModelUser
    var mensajes: [Mensajes]
}
