//
//  PerfilViewDefaults.swift
//  BookieApp
//
//  Created by dam2 on 30/5/24.
//

import Foundation

class PerfilViewDefaults {
    
    static let shared = PerfilViewDefaults()
    
    private let selectimagenkey = "seleccionarimagen"
    
    func guardarimagenseleccionada(_ imgagen: Categorias?) {
        
        if let imagen = imgagen {
            if let encoded = try? JSONEncoder().encode(imagen) {
                UserDefaults.standard.set(encoded, forKey: "seleccionarimagen")
            }
        } else {
            UserDefaults.standard.removeObject(forKey: "seleccionarimagen")
        }
    }
    
    func loadimagenseleccionada() -> Categorias? {
        
        if let savedata = UserDefaults.standard.object(forKey: "seleccionarimagen") as? Data {
            if let decoded = try? JSONDecoder().decode(Categorias.self, from: savedata) {
                return decoded
            }
        }
        return nil
    }
}
