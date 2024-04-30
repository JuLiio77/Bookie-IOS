import Foundation


struct ModelUser: Codable{
    
    var id: Int
    var username: String
    var password: String
    var email: String
    var ciudad: String
    var provincia: String
    var codigoPostal: String
    var foto: String
    var reportado: Bool
    var token: String
    
}
