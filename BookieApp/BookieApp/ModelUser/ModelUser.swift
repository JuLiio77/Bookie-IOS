import Foundation

struct ModelUser: Encodable, Decodable{
    
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
}
