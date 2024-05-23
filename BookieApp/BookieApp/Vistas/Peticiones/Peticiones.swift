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
    
    func PostRegister(_ userRegister: RegisterRequest){
         
         
         let urlString = "http://localhost:8080/api/auth/register"
         
         guard let url = URL(string: urlString) else {
             print("URL no válida")
             return
         }
         
         var request = URLRequest(url: url)
         request.httpMethod = "POST"
         request.addValue("application/json", forHTTPHeaderField: "Content-Type")
         
         guard let httpBody = try? JSONEncoder().encode(userRegister) else {
             print("Invalid httpBody")
             return
         }
         
         request.httpBody = httpBody
    
         URLSession.shared.dataTask(with: request){ data, response, error in
             
             if let data = data {
                 do{
                     let decoder = JSONDecoder()
                     
                     let token = try decoder.decode(ModelToken.self, from: data)
                     UserDefaults.standard.setValue(token.token, forKey: "token")
                     print("Registro completado")
                                         
                 }catch(let error){
                     print("Registro fallido")
                     print(error.localizedDescription)
                 }
             }
             
         }.resume()
         
     }
    
    func login(_ user: AuthRequest, completion: @escaping (Result<String, Error>)-> Void){

        let urlString = "http://localhost:8080/api/auth/login"
        
        guard let url = URL(string: urlString) else {
            print("URL no válida")
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
            
        guard let httpBody = try? JSONEncoder().encode(user) else {
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
                    UserDefaults.standard.setValue(token.token, forKey: "token")
                    print("Exzito en la peticion")
                } catch (let error) {
                   print("Error en la peticion")
                }
            }
        }.resume()
    }
    
    func getUserData() {
        
        let urlString = "http://localhost:8080/api/credentials/get-user-from-token"
        guard let url = URL(string: urlString) else {
            print("URL no válida")
            return
        }

        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        
        let tokenUser = UserDefaults.standard.string(forKey: "token") // Si llega a fallar cambiar el UserDefault por un token

        request.setValue("Bearer \(tokenUser)", forHTTPHeaderField: "Authorization")

        URLSession.shared.dataTask(with: request) { data, response, error in
            let decoder = JSONDecoder()

            if let data = data {
                
                do {
                    let user = try decoder.decode(ModelUser.self, from: data)
                    print("Usuario decodificado:", user)
                } catch {
                    print("Error al decodificar datos del usuario:", error.localizedDescription)
                }
            } else if let error = error {
                print("Error de red:", error.localizedDescription)
            }
        }.resume()
    }
    
    func subirLibro(_ libro: Libro){
        
        let urlString = "http://localhost:8080/api/libro"
        
        guard let url = URL(string: urlString) else {
            print("URL no válida")
            return
        }
        
        let token = UserDefaults.standard.string(forKey: "token")
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        guard let httpBody = try? JSONEncoder().encode(libro) else {
            print("Invalid httpBody")
            return
        }
        
        request.httpBody = httpBody
        
        URLSession.shared.dataTask(with: request){ data, response, error in
            
            if let data = data {
                do{
                    let decoder = JSONDecoder()
                    
                    let libro = try decoder.decode(libro.self, from: data)
                    
                    print("libro completado")
                    
                }catch(let error){
                    print("libro fallido")
                    // print(error.localizedDescription)
                }
            }
            
        }.resume()
        
    }
        
}
