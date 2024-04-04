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
    
    func postRegistrer(){
        
        let Url = String(format: "http://localhost:8080/api/auth/login")
        guard let serviceUrl = URL(string: Url) else { return }
        var request = URLRequest(url: serviceUrl)
        request.httpMethod = "POST"
        request.setValue("Application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")

        let bodyData = "username=Pepe123&password=12345"
        request.httpBody = bodyData.data(using: String.Encoding.utf8);

        let session = URLSession.shared
        session.dataTask(with: request) { (data, response, error) in
            if let response = response {
                print(response)
            }
            if let data = data {
                do {
                    let json = try JSONSerialization.jsonObject(with: data, options: [])
                    print(json)
                } catch {
                    print(error)
                }
            }
        }.resume()

    }
    
    func login(completionHandler: @escaping (AuthRequest)-> Void ){
        
        var components = URLComponents()
        components.scheme = "http"
        components.host = "regres.in"
        components.path = "/auth/login"
        
        guard let url = components.url else{
            print("invalid url")
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let firstUser = AuthRequest(username: "pepe1234", password: "12345")
        guard let httpBody = try? JSONEncoder().encode(firstUser) else {
            print("Invalid httpBody")
            return
        }
        
        request.httpBody = httpBody
        
        URLSession.shared.dataTask(with: request){ data, response, error in
            if let data = data {
                do{
                    let decoder = JSONDecoder()
                    
                    let user = try decoder.decode(AuthRequest.self, from: data)
                    
                    completionHandler(user)
                    
                }catch(let error){
                    print(error.localizedDescription)
                }
            }
        }.resume()
        
        
    }
    
    func getToken(){
        
        
        
    }
       
    
}
