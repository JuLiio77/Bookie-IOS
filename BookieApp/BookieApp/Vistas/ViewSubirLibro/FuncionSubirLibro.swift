//
//  FuncionSubirLibro.swift
//  BookieApp
//
//  Created by dam2 on 2/5/24.
//

import Foundation

class FuncionSubirLibro: ObservableObject {
    
    var peticiones = PeticionesSubirLibro()
    
    @Published var titulo: String = UserDefaults.standard.string(forKey: "titulo") ?? ""
    @Published var autor: String = UserDefaults.standard.string(forKey: "autor") ?? ""
    @Published var numeroPaginas : String = UserDefaults.standard.string(forKey: "numeroPaginas") ?? ""
    @Published var genero: String = UserDefaults.standard.string(forKey: "genero") ?? ""
    @Published var editorial: String = UserDefaults.standard.string(forKey: "editorial") ?? ""
    @Published var sinopsis: String = UserDefaults.standard.string(forKey: "sinopsis") ?? ""
    
  
}


