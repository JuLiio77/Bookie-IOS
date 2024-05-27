//
//  Mensajes.swift
//  BookieApp
//
//  Created by dam2 on 4/4/24.
//

import Foundation

struct Mensaje: Codable {
    let texto: String
    let idusuario: Int
    let idChat: Int
    let fechaMensaje: String
}

class ModelMensaje: ObservableObject{
    
    @Published var mensajes: [Mensaje]
    
    init(mensajes: [Mensaje]) {
        self.mensajes = mensajes
    }
    
    func sendMensaje(_ mensaje: Mensaje){
        
        let urlString = "http://localhost:8080/api/mensaje"

        guard let url = URL(string: urlString) else {
            print("URL no válida")
            return
        }

        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")

        
        guard let httpBody = try? JSONEncoder().encode(mensaje) else{
            print("Invalid httpBody")
            return
        }

        request.httpBody = httpBody

        URLSession.shared.dataTask(with: request){ data, response, error in

            if data != nil {
                
              let decoder = JSONDecoder()
                self.mensajes.append(Mensaje(texto: "", idusuario: 1, idChat: 1, fechaMensaje: "1342324"))
              print("Se mando el mensaje correctamente")
                
            }
          
        }.resume()
                
    }
}
