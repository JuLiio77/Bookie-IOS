import Foundation

struct ModelUser: Encodable, Decodable{
    
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
}


//
//struct UsuarioId: Encodable, Decodable{
//    var id: Int = UserDefaults.standard.integer(forKey: "id")
//}
