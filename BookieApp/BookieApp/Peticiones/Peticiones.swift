//
//  Peticiones.swift
//  BookieApp
//
//  Created by dam2 on 18/3/24.
//

import Foundation

class Peticiones{
    
    static let shared = Peticiones()

    // funcion para descargar los datos
    func getDatosApi(apiResponse: @escaping(Book)-> ()){
        
        guard let url = URL(string: "https://www.googleapis.com/books/v1/volumes?q=a") else {return}
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.addValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-type")
        request.timeoutInterval = 20
        
        let session = URLSession.shared
        session.dataTask(with: request){ (data, response, error) in
            if let response = response as? HTTPURLResponse{
                if response.statusCode != 200{
                    DispatchQueue.main.async {
                        print("Hay un error en la peticion")
                    }
                }
                return
            }
            
            guard let data = data else {return}
            
            if let decodedData = try? JSONDecoder().decode(Book.self, from: data){
                print("Se ha traido los datos correctamente")
                
                DispatchQueue.main.async {
                    apiResponse(decodedData)
                }
            }else{
                print("No se ha podido descodificar el json")
            }
            
            
        }.resume()
    
    }
    
    func PostRegister(name: String,password: String,email:String,repass:String,provincia: String, ciudad: String, codigoPos:Int, completion: @escaping (Result<RegisterRequest, Error>)-> Void ){
        
        var urlString = "http://localhost:8080/api/auth/register"
        
        guard let url = URL(string: urlString) else {
            print("URL no válida")
            return
        }
        
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let firstUser = RegisterRequest(rol: "ROLE_USER", nombre: name, username: "", password: password, email: email, ciudad: ciudad, provincia: provincia, codigoPostal: codigoPos, foto: "", reportado: false, token: "")
        guard let httpBody = try? JSONEncoder().encode(firstUser) else {
            print("Invalid httpBody")
            return
        }
        
        request.httpBody = httpBody
   
        URLSession.shared.dataTask(with: request){ data, response, error in
            
            if let data = data {
                do{
                    let decoder = JSONDecoder()
                    
                    let token = try decoder.decode(ModelToken.self, from: data)
                    
                    print(token)
                    
                }catch(let error){
                    print(error.localizedDescription)
                }
            }
        }.resume()
 
    }
    
    func login(username: String, password: String, completion: @escaping (Result<AuthRequest, Error>)-> Void ){

        var urlString = "http://localhost:8080/api/auth/login"
        
        guard let url = URL(string: urlString) else {
            print("URL no válida")
            return
        }
        
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let firstUser = AuthRequest(username: username, password: password)
        guard let httpBody = try? JSONEncoder().encode(firstUser) else {
            print("Invalid httpBody")
            return
        }
        print(firstUser)
        request.httpBody = httpBody
   
        URLSession.shared.dataTask(with: request){ data, response, error in
            
            if let data = data {
                do{
                    let decoder = JSONDecoder()
                    
                    let token = try decoder.decode(ModelToken.self, from: data)
                    
                    print(token)
                    
                }catch(let error){
                    print(error.localizedDescription)
                }
            }
        }.resume()
        
        
    }
    
       
    
}

