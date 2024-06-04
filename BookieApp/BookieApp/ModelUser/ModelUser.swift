import Foundation

struct ModelUser: Encodable, Decodable{
    
<<<<<<< HEAD
<<<<<<< HEAD
=======

struct ModelUser: Decodable{
  
    var username: String
>>>>>>> jose
=======
>>>>>>> letizia
    var id: Int
    var username: String
    var password: String
    var email: String
    var ciudad: String
    var provincia: String
    var codigoPostal: String
    var foto: String
    var reportado: String
    var token: String
<<<<<<< HEAD
=======
    var provicia: String
    var codigoPosta: Int
>>>>>>> jose
=======
    var username: String = UserDefaults.standard.string(forKey: "username") ?? ""
    var id: Int = UserDefaults.standard.integer(forKey: "id")
    var nombre: String = UserDefaults.standard.string(forKey: "name") ?? ""
    //var password: String = UserDefaults.standard.string(forKey: "password") ?? ""
    var email: String = UserDefaults.standard.string(forKey: "email") ?? ""
    var ciudad: String = UserDefaults.standard.string(forKey: "ciudad") ?? ""
    var provincia: String = UserDefaults.standard.string(forKey: "provincia") ?? ""
    var codigoPostal: Int = UserDefaults.standard.integer(forKey: "codigoPostal")
    //var foto: String = UserDefaults.standard.string(forKey: "foto") ?? ""
    //var reportado: Bool = false
//    var token: String = UserDefaults.standard.string(forKey: "token") ?? ""
    //var bookieFavoutitaId: Int
>>>>>>> julio
=======
>>>>>>> letizia
}
