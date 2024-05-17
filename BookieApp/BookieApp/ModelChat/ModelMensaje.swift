//
//  Mensajes.swift
//  BookieApp
//
//  Created by dam2 on 4/4/24.
//

import Foundation

struct Message: Codable{

    var texto: String
    var idUsuario: Int
    var idChat: Int
    var fechaMensaje: String
}


class ModelMensaje: ObservableObject {
    
    @Published var mensajes: [Message]
    
    init(mensajes: [Message]) {
        self.mensajes = mensajes
    }
    
    func sendMensaje(_ mensaje: Message){
        
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

            if let data = data {
                
              let decoder = JSONDecoder()
                self.mensajes.append(Message.init(texto: "", idUsuario: 1,idChat: 1, fechaMensaje: "12345"))
              print("Se mando el mensaje correctamente")
                
            }
          
        }.resume()
                
    }
}
