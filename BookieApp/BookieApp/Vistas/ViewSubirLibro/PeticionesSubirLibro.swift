//
//  PeticionesSubirLibro.swift
//  BookieApp
//
//  Created by dam2 on 30/4/24.
//

import Foundation

class PeticionesSubirLibro{
    
    func subirLibro(libro: SubirLibroRequest) {
        guard let url = URL(string: "http://localhost:8080/api/libro") else {
            print("Invalid URL")
            return
        }

        var request = URLRequest(url: url)
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpMethod = "POST"

        do {
            let jsonData = try JSONEncoder().encode(libro)
            request.httpBody = jsonData
        } catch {
            print("Failed to encode libro: \(error.localizedDescription)")
            return
        }

        URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                print("Failed to upload libro: \(error.localizedDescription)")
                return
            }

            if let response = response as? HTTPURLResponse, response.statusCode != 200 {
                print("Unexpected response code: \(response.statusCode)")
                return
            }

            print("Libro uploaded successfully!")
        }.resume()
    }

    
    
    
    
//
//    static let shared = PeticionesSubirLibro()
//    
//    func SubirLibro(titulo: String, autor: String, numeroPaginas: String, sinopsis: String, editorial: String ){
//        let urlString = "http://localhost:8080/api/libro"
//        
//        guard let url = URL(string: urlString) else {
//            print("URL no válida")
//            return
//        }
//        
//        var request = URLRequest(url: url)
//        request.httpMethod = "POST"
//        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
//        
//        let book = SubirLibroRequest(titulo: titulo, autor: autor, numeroPaginas: numeroPaginas, sinopsis: sinopsis, editorial: editorial)
//        guard let httpBody = try? JSONEncoder().encode(book) else {
//            print("Invalid httpBody")
//            return
//        }
//        
//        request.httpBody = httpBody
//        
//        URLSession.shared.dataTask(with: request){ data, response, error in
//            if let data = data {
//                do{
//                    let decoder = JSONDecoder()
//                    return
//                } catch(let error){
//                    print(error.localizedDescription)
//                }
//            }
//        }.resume()
//        
//    }
//    
}
