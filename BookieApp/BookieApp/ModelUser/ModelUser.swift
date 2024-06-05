import Foundation

class ModelUser: Codable, ObservableObject {
    
    var username: String = UserDefaults.standard.string(forKey: "username") ?? ""
    var id: Int = UserDefaults.standard.integer(forKey: "id")
    var nombre: String = UserDefaults.standard.string(forKey: "name") ?? ""
<<<<<<< HEAD
    //var password: String = UserDefaults.standard.string(forKey: "password") ?? ""
=======
>>>>>>> origin/letizia
    var email: String = UserDefaults.standard.string(forKey: "email") ?? ""
    var ciudad: String = UserDefaults.standard.string(forKey: "ciudad") ?? ""
    var provincia: String = UserDefaults.standard.string(forKey: "provincia") ?? ""
    var codigoPostal: Int = UserDefaults.standard.integer(forKey: "codigoPostal")
<<<<<<< HEAD
    //var foto: String = UserDefaults.standard.string(forKey: "foto") ?? ""
    //var reportado: Bool = false
//    var token: String = UserDefaults.standard.string(forKey: "token") ?? ""
    //var bookieFavoutitaId: Int
}


//
=======
}

class UserService {
    
    var modelo = ModelUser()
    
    func getUserData() {
        
        guard let tokenUser = UserDefaults.standard.string(forKey: "token"), !tokenUser.isEmpty else {
            print("token vacio o no encontrado")
            return
        }
        
        let urlString = "http://localhost:8080/api/credentials/get-user-from-token"
        
        guard let url = URL(string: urlString) else {
            print("URL no valida")
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        
        request.setValue("Bearer \(tokenUser)", forHTTPHeaderField: "Authorization")
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            
            let decoder = JSONDecoder()
            
            if let data = data {
    
                do {
                    
                    let user = try decoder.decode(ModelUser.self, from: data)
                    
                    DispatchQueue.main.async { [self] in
                        
                        modelo.username = user.username
                        modelo.id = user.id
                        modelo.nombre = user.nombre
                        modelo.email = user.email
                        modelo.ciudad = user.ciudad
                        modelo.provincia = user.provincia
                        modelo.codigoPostal = user.codigoPostal
                        
                        UserDefaults.standard.setValue(user.id, forKey: "id")
                        print(ModelUser())
                    }
                    
                    print("usuario decodificado")
                    
                } catch {
                    print("error al decodificar datos del usuario: \(error.localizedDescription)")
                }
            } else if let error = error {
                print("Error de red:", error.localizedDescription)
            }
        
        /*let urlString = "http://localhost:8080/api/credentials/get-user-from-token"
        
        guard let url = URL(string: urlString) else {
            print("URL no válida")
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        
        let tokenUser = UserDefaults.standard.string(forKey: "token")
        
        if tokenUser!.isEmpty {
            print("Token vacio")
        }
        
        request.setValue("Bearer \(tokenUser ?? "")", forHTTPHeaderField: "Authorization")
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            
            let decoder = JSONDecoder()
            
            if let data = data {
    
                do {
                    
                    let user = try decoder.decode(ModelUser.self, from: data)
                    
                    DispatchQueue.main.async { [self] in
                        
                        modelo.username = user.username
                        modelo.id = user.id
                        modelo.nombre = user.nombre
                        modelo.email = user.email
                        modelo.ciudad = user.ciudad
                        modelo.provincia = user.provincia
                        modelo.codigoPostal = user.codigoPostal
                        
                        UserDefaults.standard.setValue(user.id, forKey: "id")
                        print(ModelUser())
                    }
                    print("Usuario decodificado")
                } catch {
                    print("Error al decodificar datos del usuario: \(error.localizedDescription)")
                }
            } else if let error = error {
                print("Error de red:", error.localizedDescription)
            }*/
        }.resume()
    }
}

>>>>>>> origin/letizia
//struct UsuarioId: Encodable, Decodable{
//    var id: Int = UserDefaults.standard.integer(forKey: "id")
//}
