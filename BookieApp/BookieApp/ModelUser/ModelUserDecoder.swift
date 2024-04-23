//
//  ModelUserDecoder.swift
//  BookieApp
//
//  Created by dam2 on 23/4/24.
//

import Foundation

@Observable
class ModelUserDecoder {
    //Aqui se pone el json
    var modelo: [ModelUser] = load("datosUser.json")
    
}

func load<T: Decodable>(_ filename: String)-> T{
    
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("No se ha podido encontrar el fichero \(filename)")
    }
    
    do {
        data = try Data(contentsOf: file)
    }catch{
        fatalError("No se podido cargar el fichero \(filename):\n\(error)")
    }
    
    do{
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    }catch{
        fatalError("No se ha podido parsear el fichero \(filename) como \(T.self):\n\(error)")
    }

}


