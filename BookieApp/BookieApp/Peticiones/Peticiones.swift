//
//  Peticiones.swift
//  BookieApp
//
//  Created by dam2 on 18/3/24.
//

import Foundation

class Peticiones{
    
    static let shared = Peticiones()
    private let constantes = Constant.self

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
    
  // FUNCION POST DE LOGIN DE USUARIO -- SE LE MANDA POR PARAMETRO EL USERNAME Y LA CONTRASELA Y SI ESTA CORRECTO NOS DEVUELVE UN TOKEN
    
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
                do{
                    let decoder = JSONDecoder()
                    
                    let token = try decoder.decode(ModelToken.self, from: data)
                    
                    UserDefaults.standard.setValue(token.token, forKey: "token")
                    
                }catch(_){
                    print("error en el login")
                }
            }
        }.resume()
        
        
    }
    
       
    // FUNCION GET PARA CONSEGUIR LOS DATOS DEL USUARIO QUE SE HA LOGUEADO
    func getUserData() {
        
        let urlString = "http://localhost:8080/api/credentials/get-user-from-token"
        guard let url = URL(string: urlString) else {
            print("URL no válida")
            return
        }

        var request = URLRequest(url: url)
        request.httpMethod = "POST" // Assuming GET request for retrieving data

        let tokenUser = UserDefaults.standard.string(forKey: "token")    //"eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJpbmlnbzEyMzE0IiwiaWF0IjoxNzE0NDkwODM0LCJleHAiOjE3MTQ1NzcyMzR9.dYV6z5BSWIdDdBROnWTZnTCh12bs3-V4Nhq71k8NNDM"

        request.setValue("Bearer \(tokenUser!)", forHTTPHeaderField: "Authorization")

        URLSession.shared.dataTask(with: request) { data, response, error in
            let decoder = JSONDecoder()

            if let data = data {
                print(response)
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
    
    
    func listaUsuarios(){
        
         guard let url = URL(string: "http://localhost:8080/api/usuario") else {return}

          var request = URLRequest(url: url)
          request.httpMethod = "GET"
          request.addValue("application/json", forHTTPHeaderField: "Content-type")
          request.timeoutInterval = 20

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

              if let decodedData = try? JSONDecoder().decode(UserModel.self, from: data){
                  print("Se ha traido los datos correctamente")

                  DispatchQueue.main.async {
                      //self.listaUsuarios = decodedData
                  }
              }else{
                  print("No se ha podido descodificar el json")
              }


          }.resume()
        
      }


      func borrarUser(id: Int){
        
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

              if let decodedData = try? JSONDecoder().decode(Book.self, from: data){
                  print("Se ha traido la lista de libros correctamente")

                  DispatchQueue.main.async {
                      apiResponse(decodedData)
                  }
              }else{
                  print("No se ha podido descodificar el json")
              }


          }.resume()

      }

      func listaLibrosUser(id: Int){

        guard let url = URL(string: "http://localhost:8080/api/libro/usuario/\(id)") else {return}

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

            if let decodedData = try? JSONDecoder().decode(Book.self, from: data){
                print("Se ha traido la lista de libros correctamente")

                DispatchQueue.main.async {
                    apiResponse(decodedData)
                }
            }else{
                print("No se ha podido descodificar el json")
            }


        }.resume()
        
      }

      func listaLibrosGender(gender: String){
        
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

            if let decodedData = try? JSONDecoder().decode(Book.self, from: data){
                print("Se ha traido la lista de libros con genero correctamente")

                DispatchQueue.main.async {
                    apiResponse(decodedData)
                }
            }else{
                print("No se ha podido descodificar el json")
            }


        }.resume()
        
      }


      func subirLibro(libro: Book, completion: @escaping (Result<String, Error>)-> Void){

          let urlString = "http://localhost:8080/api/libro"

          guard let url = URL(string: urlString) else {
              print("URL no válida")
              return
          }

          var request = URLRequest(url: url)
          request.httpMethod = "POST"
          request.addValue("application/json", forHTTPHeaderField: "Content-Type")

          let user = ModelUser.self
          guard let httpBody = try? JSONEncoder().encode(user) else{
              print("Invalid httpBody")
              return
          }

          request.httpBody = httpBody

          URLSession.shared.dataTask(with: request){ data, response, error in

              if let data = data {
                  do{
                      let decoder = JSONDecoder()
                      let respuesta = data
                      print("Se subio el libro correctamente")
                  }catch(_){
                      print("error en el post del libro")
                  }
              }
          }.resume()


      }

      // Funcion para borrar un libro
      func borrarLibro(id: Int, completion: @escaping (Result<String, Error>)-> Void){
      }


    /////////////////////////////////  CHAT

      func listaChat(id: Int){
        
         guard let url = URL(string: "http://localhost:8080/api/chats/\(id)") else {return}

          var request = URLRequest(url: url)
          request.httpMethod = "GET"
          request.addValue("application/json", forHTTPHeaderField: "Content-type")
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
                  print("Se ha traido los chats correctamente")

                  DispatchQueue.main.async {
                      //trabajar con la respuesta
                  }
              }else{
                  print("No se ha podido descodificar el json")
              }


          }.resume()
      }

      func subirChat(){

        let urlString = "http://localhost:8080/api/chats"

        guard let url = URL(string: urlString) else {
            print("URL no válida")
            return
        }

        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")

        let libro = Book.self
        guard let httpBody = try? JSONEncoder().encode(libro) else {
            print("Invalid httpBody")
            return
        }

        request.httpBody = httpBody

        URLSession.shared.dataTask(with: request){ data, response, error in

            if let data = data {
                do{
                    let decoder = JSONDecoder()
                    let respuesta = data
                    print("Se subio el chat correctamente")
                }catch(_){
                    print("error en el chat")
                }
            }
        }.resume()
      }

}

