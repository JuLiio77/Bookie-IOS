//
//  funcionesLibro.swift
//  BookieApp
//
//  Created by dam2 on 4/6/24.
//

import Foundation

class FuncionesLibro: ObservableObject{
    
    var token = UserDefaults.standard.string(forKey: "token")
    var userId = ModelUser()
    @Published var arrayLibros = [LibroUsuario]()
    
    var arrayCompro = [LibroUsuario]()
    
    
    func listaLibrosUser(_ id: Int){
        
        guard let url = URL(string: "http://localhost:8080/api/libro/usuario/\(id)") else {return}
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.addValue("application/json", forHTTPHeaderField: "Content-type")
        
        request.setValue("Bearer \(token ?? "")", forHTTPHeaderField: "Authorization")
        
        
        URLSession.shared.dataTask(with: request){ [weak self] (data, response, error) in
            
            let decoder = JSONDecoder()
            if let error = error {
                print("Error al traer el listado \(error)")
                return
            }
            
            guard let data = data else {
                print("No se recibieron datos")
                return
            }
            
            do {
                
                let datosLibro = try decoder.decode([LibroUsuario].self, from: data)
                self?.arrayLibros.append(contentsOf: datosLibro)
                
                
            } catch {
                print("Error al decodificar los datos: \(error)")
            }
            
        }.resume()
     print(arrayLibros)
    }
}

            
            

