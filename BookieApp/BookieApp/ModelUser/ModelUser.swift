import Foundation

<<<<<<< HEAD
struct ModelUser: Encodable, Decodable{
    
=======

struct ModelUser: Decodable{
  
    var username: String
>>>>>>> jose
    var id: Int
    var username: String
    var password: String
    var email: String
    var ciudad: String
<<<<<<< HEAD
    var provincia: String
    var codigoPostal: String
    var foto: String
    var reportado: String
    var token: String
=======
    var provicia: String
    var codigoPosta: Int
>>>>>>> jose
}
