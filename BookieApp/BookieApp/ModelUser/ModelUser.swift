import Foundation

struct ModelUser: Encodable, Decodable{
    
    var id: Int
    var nombre: String
    var username: String
    var password: String
    var email: String
    var ciudad: String
    var provincia: String
    var codigoPostal: Int
    var foto: String
    var reportado: Bool
    var token: String = ""
    var bookieFavoutitaId: Int
}



struct ModelUser2: Encodable, Decodable{
    
    var id: Int

}
