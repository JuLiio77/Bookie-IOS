//
//  DatosDefaults.swift
//  BookieApp
//
//  Created by dam2 on 4/4/24.
//

import Foundation

class Datos: ObservableObject{
    
    static let shared = Datos()
    
    @Published var username: String = UserDefaults.standard.string(forKey: "username") ?? ""
    @Published var password: String = UserDefaults.standard.string(forKey: "password") ?? ""
    @Published var recordarConta: Bool = UserDefaults.standard.bool(forKey: "toogle")
    @Published var token: String = UserDefaults.standard.string(forKey: "token") ?? ""
}
