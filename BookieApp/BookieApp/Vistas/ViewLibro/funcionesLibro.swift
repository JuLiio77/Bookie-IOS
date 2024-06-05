//
//  funcionesLibro.swift
//  BookieApp
//
//  Created by dam2 on 4/6/24.
//

import Foundation

struct FuncionesLibro {
    
//    var token = UserDefaults.standard.string(forKey: "token")
//    var userId = ModelUser()
//    var libro = Libro()
//    var arrayLibros: [Libro] = []
//    
//    mutating func listaLibrosUser(_ id: Int) {
//        
//        guard let url = URL(string: "http://localhost:8080/api/libro/usuario/\(userId.id)") else { return }
//        
//        var request = URLRequest(url: url)
//        request.httpMethod = "GET"
//        request.addValue("application/json", forHTTPHeaderField: "Content-type")
//        request.setValue("Bearer \(token ?? "")", forHTTPHeaderField: "Authorization")
//        
//        URLSession.shared.dataTask(with: request) { data, response, error in
//            let decoder = JSONDecoder()
//            if let error = error {
//                print("Error al traer el listado \(error)")
//                return
//            }
//            
//            guard let data = data else {
//                print("No se recibieron datos")
//                return
//            }
//            
//            do {
//                let datosLibro = try decoder.decode([Libro].self, from: data)
//                arrayLibros.append(contentsOf: datosLibro)
//            } catch {
//                print("Error al decodificar los datos: \(error)")
//            }
//        }.resume()
        
        //        URLSession.shared.dataTask(with: request){ data, response, error in
        //            let decoder = JSONDecoder()
        //
        //            if let data = data {
        //
        //                do{
        //                    let datosLibro = try decoder.decode(Libro, from: data)
        //
        //
        //                }
        //
        //
        //            }else if let error = error {
        //
        //                print("Erro al traer el listado \(error)")
        //            }
        
        
        //            if let response = response as? HTTPURLResponse{
        //                if response.statusCode != 200{
        //                    DispatchQueue.main.async {
        //                        print("Hay un error en la peticion")
        //                    }
        //                }
        //                return
        //            }
        
        //guard let data = data else {return}
        
        //            if let modelLibro = try? JSONDecoder().decode(ModelLibro.self, from: data){
        //                print("Se ha traido la lista de libros correctamente")
        //
        //                DispatchQueue.main.async {
        //                    print("Listado de libros del usuario ---> \(modelLibro)")
        //                }
        //            }else{
        //                print("No se ha podido descodificar el json \(error)")
        //            }
   // }
}
