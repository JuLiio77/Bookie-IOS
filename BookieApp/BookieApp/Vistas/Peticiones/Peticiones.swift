//
//  Peticiones.swift
//  BookieApp
//
//  Created by dam2 on 18/3/24.
//

import Foundation

class Peticiones {
    
    static let shared = Peticiones()

    // funcion para descargar los datos
    func getDatosApi(query: String, apiResponse: @escaping(Book)-> ()){
        
        let query = query.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
        guard let url = URL(string: "https://www.googleapis.com/books/v1/volumes?q=\(query)") else {return}
        
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
                
            } else {
                print("No se ha podido descodificar el json")
            }
        }.resume()
    }
    
    func PostRegister(name: String, username: String ,password: String,email:String,repass:String,provincia: String, ciudad: String, codigoPos:Int){
        
        let urlString = "http://localhost:8080/api/auth/register"
        
        guard let url = URL(string: urlString) else {
            print("URL no válida")
            return
        }
        
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let firstUser = RegisterRequest(rol: "ROLE_USER", nombre: name, username: username, password: password, email: email, ciudad: ciudad, provincia: provincia, codigoPostal: codigoPos, foto: "", reportado: false, token: "")
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
                    
                    return
                    //print(token.token)
                    //print(response)
                }catch(let error){
                    print(error.localizedDescription)
                }
            }
        }.resume()
    }
    
    func login(username: String, password: String, completion: @escaping (Result<String, Error>)-> Void){

        let urlString = "http://localhost:8080/api/auth/login"
        
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
        //print(firstUser)
        request.httpBody = httpBody
   
        URLSession.shared.dataTask(with: request){ data, response, error in
            
            if let data = data {
                
                do {
                    let decoder = JSONDecoder()
                    
                    let token = try decoder.decode(ModelToken.self, from: data)
                    
                    //UserDefaults.standard.setValue(token.token, forKey: "token")
                    UserDefaults.standard.setValue(token.token, forKey: "token")
                    //print("token peticion:\(token.token)")
                    
                } catch (let error) {
                    print("error en el login")
                }
            }
        }.resume()
    }
}
