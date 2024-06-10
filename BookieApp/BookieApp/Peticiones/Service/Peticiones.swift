//
//  Peticiones.swift
//  BookieApp
//
//  Created by dam2 on 18/3/24.
//

import Foundation

class Peticiones{
    
    static let shared = Peticiones()

    // FUNCION GET PARA CONSEGUIR UN LISTADO DE LIBROS
    
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
    
    
    // FUNCION POST DE REGISTRO DEL USUARIO -- SE LE MANDA COMO PARAMETRO TODOS LOS DATOS
    
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
    
  // FUNCION POST DE LOGIN DE USUARIO -- SE LE MANDA POR PARAMETRO EL USERNAME Y LA CONTRASELA Y SI ESTA CORRECTO NOS DEVUELVE UN TOKEN
    func login(_ user: AuthRequest, completion: @escaping (Result<String, Error>) -> Void) {
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
        
        request.httpBody = httpBody
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                do {
                    let decoder = JSONDecoder()
                    
                    let loginResponse = try decoder.decode(LoginResponse.self, from: data)
                    
                    UserDefaults.standard.setValue(loginResponse.token, forKey: "token")
                    UserDefaults.standard.setValue(loginResponse.username, forKey: "username")
                    
                    print("Login correcto. Token: \(loginResponse.token)")
                    //completion(.success(loginResponse.token))
                    return
                    
                } catch(let error) {
                    print("Error en el login \(error)")
                    completion(.failure(error))
                    return
                }
                
            } else if let error = error {
                print("Error en la solicitud de login: \(error.localizedDescription)")
                completion(.failure(error))
                return
            }
        }.resume()
    }

    
       
    // FUNCION GET PARA CONSEGUIR LOS DATOS DEL USUARIO QUE SE HA LOGUEADO
//    func getUserData() {
//        
//        let urlString = "http://localhost:8080/api/credentials/get-user-from-token"
//        guard let url = URL(string: urlString) else {
//            print("URL no válida")
//            return
//        }
//
//        var request = URLRequest(url: url)
//        request.httpMethod = "POST"
//    
//        let tokenUser = UserDefaults.standard.string(forKey: "token") // Si llega a fallar cambiar el UserDefault por un token
//        if tokenUser!.isEmpty{
//            print("Token vacio")
//        }
//        request.setValue("Bearer \(tokenUser ?? "")", forHTTPHeaderField: "Authorization")
//
//        URLSession.shared.dataTask(with: request) { data, response, error in
//            let decoder = JSONDecoder()
//
//            if let data = data {
//                print(String(decoding: data, as: UTF8.self))
//
//                do {
//                    let user = try decoder.decode(ModelUser.self, from: data)
//                    print("Usuario decodificado")
//                } catch {
//                    print("Error al decodificar datos del usuario: \(error.localizedDescription)")
//                }
//            } else if let error = error {
//                print("Error de red:", error.localizedDescription)
//            }
//        }.resume()
//    }
    
    
    func listaUsuarios(){
        
         guard let url = URL(string: "http://localhost:8080/api/usuario") else {return}

          var request = URLRequest(url: url)
          request.httpMethod = "GET"
          request.addValue("application/json", forHTTPHeaderField: "Content-type")
          

          let session = URLSession.shared
          session.dataTask(with: request){ (data, response, error) in
              if let response = response as? HTTPURLResponse{
                  if response.statusCode != 200{
                      DispatchQueue.main.async {
                          print("Error al traer la lista de usuario")
                      }
                  }
                  return
              }

              guard let data = data else {return}

              // Ver como descodificar los datos correctamente
//              if let decodedData = try? JSONDecoder().decode(UserModel.self, from: data){
//                  print("Se ha traido los datos correctamente")
//
//                  DispatchQueue.main.async {
//                      //self.listaUsuarios = decodedData
//                  }
//              }else{
//                  print("No se ha podido descodificar el json")
//              }


          }.resume()
        
      }


      func borrarUser(_ id: Int){
          
          let urlString = "http://localhost:8080/api/usuario/\(id)"

          guard let url = URL(string: urlString) else {
              print("URL no válida")
              return
          }

          var request = URLRequest(url: url)
          request.httpMethod = "DELETE"
          request.addValue("application/json", forHTTPHeaderField: "Content-Type")


          URLSession.shared.dataTask(with: request){ data, response, error in

              if let data = data {
                  
                let decoder = JSONDecoder()
                let respuesta = data
                print("Se ha borrado el usuario correctamente")
                  
              }else if let error = error {
                  print("Ha ocurrido un error \(error)")
              }
            
          }.resume()
        
      }


      ////////////////////////////////////////////////

      func listaLibros(){

          guard let url = URL(string: "http://localhost:8080/api/libro") else {return}

          var request = URLRequest(url: url)
          request.httpMethod = "GET"
          request.addValue("application/json", forHTTPHeaderField: "Content-type")

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

              if let modelLibro = try? JSONDecoder().decode(Libro.self, from: data){
                  
                  print("Se ha traido la lista de libros correctamente")

                  DispatchQueue.main.async {
                      print("Listado de libros ---> \(modelLibro)")
                  }
              }else{
                  print("No se ha podido descodificar el json")
              }


          }.resume()

      }

//      func listaLibrosUser(_ id: Int){
//
//        guard let url = URL(string: "http://localhost:8080/api/libro/usuario/\(id)") else {return}
//
//        var request = URLRequest(url: url)
//        request.httpMethod = "GET"
//        request.addValue("application/json", forHTTPHeaderField: "Content-type")
//
//        let session = URLSession.shared
//        session.dataTask(with: request){ (data, response, error) in
//            if let response = response as? HTTPURLResponse{
//                if response.statusCode != 200{
//                    DispatchQueue.main.async {
//                        print("Hay un error en la peticion")
//                    }
//                }
//                return
//            }
//
//            guard let data = data else {return}
//
//            if let modelLibro = try? JSONDecoder().decode(ModelLibro.self, from: data){
//                print("Se ha traido la lista de libros correctamente")
//
//                DispatchQueue.main.async {
//                    print("Listado de libros del usuario ---> \(modelLibro)")
//                }
//            }else{
//                print("No se ha podido descodificar el json")
//            }
//
//
//        }.resume()
//        
//      }

      func listaLibrosGender(_ gender: String){
        
        guard let url = URL(string: "http://localhost:8080/api/libro/genero/\(gender)") else {return}

        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.addValue("application/json", forHTTPHeaderField: "Content-type")

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

            if let modelLibro = try? JSONDecoder().decode(ModelLibro.self, from: data){
                print("Se ha traido la lista de libros con genero correctamente")

                DispatchQueue.main.async {
                    print("Listado de libros por genero ---> \(modelLibro)")
                }
            }else{
                print("No se ha podido descodificar el json")
            }


        }.resume()
        
      }


      func subirLibro(_ libro: Libro){

          let urlString = "http://localhost:8080/api/libro"

          guard let url = URL(string: urlString) else {
              print("URL no válida")
              return
          }

          var request = URLRequest(url: url)
          request.httpMethod = "POST"
          request.addValue("application/json", forHTTPHeaderField: "Content-Type")

          
          guard let httpBody = try? JSONEncoder().encode(libro) else{
              print("Invalid httpBody")
              return
          }

          request.httpBody = httpBody

          URLSession.shared.dataTask(with: request){ data, response, error in

              if let data = data {
                  
                let decoder = JSONDecoder()
                let respuesta = data
                print("Se subio el libro correctamente")
                  
              }
            
          }.resume()


      }

      // Funcion para borrar un libro
      func borrarLibro(id: Int, completion: @escaping (Result<String, Error>)-> Void){
      }


    ////////////////////////////////  CHAT

//      func listaChat(_ id: Int){
//        
//         guard let url = URL(string: "http://localhost:8080/api/chats/\(id)") else {return}
//
//          var request = URLRequest(url: url)
//          request.httpMethod = "GET"
//          request.addValue("application/json", forHTTPHeaderField: "Content-type")
//          request.timeoutInterval = 20
//
//          let session = URLSession.shared
//          session.dataTask(with: request){ (data, response, error) in
//              if let response = response as? HTTPURLResponse{
//                  if response.statusCode != 200{
//                      DispatchQueue.main.async {
//                          print("Hay un error en la peticion")
//                      }
//                  }
//                  return
//              }
//
//              guard let data = data else {return}
//
//              if let decodedData = try? JSONDecoder().decode(ModelChat.self, from: data){
//                  print("Se ha traido los chats correctamente")
//
//                  DispatchQueue.main.async {
//                      //trabajar con la respuesta
//                  }
//              }else{
//                  print("No se ha podido descodificar el json")
//              }
//
//
//          }.resume()
//      }
//    
//    func sendMensaje(_ mensaje: Mensaje){
//        
//        let urlString = "http://localhost:8080/api/mensaje"
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
//        
//        guard let httpBody = try? JSONEncoder().encode(mensaje) else{
//            print("Invalid httpBody")
//            return
//        }
//
//        request.httpBody = httpBody
//
//        URLSession.shared.dataTask(with: request){ data, response, error in
//
//            if let data = data {
//                
//              let decoder = JSONDecoder()
//              let respuesta = data
//              print("Se mando el mensaje correctamente")
//                
//            }
//          
//        }.resume()
                
    }

    
    // Revisar funcion por que se han cambiado cosas del modelo y la forma de hacerlo
    
//      func subirChat(){
//
//        let urlString = "http://localhost:8080/api/chats"
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
//        let chat = ModelChat.self
//        guard let httpBody = try? JSONEncoder().encode(chat) else {
//            print("Invalid httpBody")
//            return
//        }
//
//        request.httpBody = httpBody
//
//        URLSession.shared.dataTask(with: request){ data, response, error in
//
//            if let data = data {
//                do{
//                    let decoder = JSONDecoder()
//                    let respuesta = data
//                    print("Se subio el chat correctamente")
//                }catch(_){
//                    print("error en el chat")
//                }
//            }
//        }.resume()
//      }


