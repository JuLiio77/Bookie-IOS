//
//  AuthRequest.swift
//  BookieApp
//
//  Created by dam2 on 3/4/24.
//

import Foundation

struct AuthRequest: Encodable, Decodable{
    
    var username: String = UserDefaults.standard.string(forKey: "username") ?? ""
    var password: String = UserDefaults.standard.string(forKey: "password") ?? ""
}
