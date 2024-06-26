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
    private let selectfiltrokey = "seleccionarfiltro"
    
    //guarda imagen de foto de perfil de manera persistente y cargarla
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
    
    //guardar filtros del perfil de manera persistente y cargarlod
    func guardarfiltroselect(_ filtro: Filtros?, pos: Int) {
        
        if let filtro = filtro {
            if let encoded = try? JSONEncoder().encode(filtro) {
                UserDefaults.standard.set(encoded, forKey: "seleccionarfiltro\(pos)")
            }
        } else {
            UserDefaults.standard.removeObject(forKey: "seleccionarfiltro\(pos)")
        }
    }
      
    func loadfiltroselect(pos: Int) -> Filtros? {
        
        if let savedata = UserDefaults.standard.object(forKey: "seleccionarfiltro\(pos)") as? Data {
            if let decoded = try? JSONDecoder().decode(Filtros.self, from: savedata) {
                return decoded
            }
        }
        return nil
    }
}
