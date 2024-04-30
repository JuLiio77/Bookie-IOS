//
//  PeticionesSubirLibro.swift
//  BookieApp
//
//  Created by dam2 on 30/4/24.
//

import Foundation


func SubirLibro(titulo: String, autor: String, numeroPaginas: String, sinopsis: String, editorial: String ){
    let urlString = "http://localhost:8080/api/libro"
    
    guard let url = URL(string: urlString) else {
            print("URL no válida")
            return
        }
}

//
//
//func PostRegister(name: String, username: String ,password: String,email:String,repass:String,provincia: String, ciudad: String, codigoPos:Int){
//    
//    let urlString = "http://localhost:8080/api/auth/register"
//    
//    guard let url = URL(string: urlString) else {
//        print("URL no válida")
//        return
//    }
//    
//    
//    var request = URLRequest(url: url)
//    request.httpMethod = "POST"
//    request.addValue("application/json", forHTTPHeaderField: "Content-Type")
//    
//    let firstUser = RegisterRequest(rol: "ROLE_USER", nombre: name, username: username, password: password, email: email, ciudad: ciudad, provincia: provincia, codigoPostal: codigoPos, foto: "", reportado: false, token: "")
//    guard let httpBody = try? JSONEncoder().encode(firstUser) else {
//        print("Invalid httpBody")
//        return
//    }
//    
//    request.httpBody = httpBody
//
//    URLSession.shared.dataTask(with: request){ data, response, error in
//        
//        if let data = data {
//            do{
//                let decoder = JSONDecoder()
//                
//                let token = try decoder.decode(ModelToken.self, from: data)
//                
//                return
//                //print(token.token)
//                //print(response)
//            }catch(let error){
//                print(error.localizedDescription)
//            }
//        }
//        
//        
//    }.resume()
//    
//}
//
//
