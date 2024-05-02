//
//  FuncionSubirLibro.swift
//  BookieApp
//
//  Created by dam2 on 2/5/24.
//

import Foundation

class FuncionSubirLibro: ObservableObject {
    
    var peticiones = PeticionesSubirLibro()
    static let shared = FuncionSubirLibro()
    
    var titulo: String = UserDefaults.standard.string(forKey: "titulo") ?? ""
    var autor: String = UserDefaults.standard.string(forKey: "autor") ?? ""
    var numeroPaginas : String = UserDefaults.standard.string(forKey: "numeroPaginas") ?? ""
    var genero: String = UserDefaults.standard.string(forKey: "genero") ?? ""
    var editorial: String = UserDefaults.standard.string(forKey: "editorial") ?? ""
    var sinopsis: String = UserDefaults.standard.string(forKey: "sinopsis") ?? ""
    
    
    func subirLibro(){
        
    }
}


//@State var titulo: String = ""
//@State var autor: String = ""
//@State var numeroPaginas: String = ""
//@State var genero: String = ""
//@State var editorial: String = ""
//@State var sinopsis: String = ""
