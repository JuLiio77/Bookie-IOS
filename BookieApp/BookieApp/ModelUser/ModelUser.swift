import Foundation


struct ModelUser: Decodable{
  
    var username: String
    var id: Int
    var nombre: String
    var email: String
    var ciudad: String
    var provicia: String
    var codigoPosta: Int
}
