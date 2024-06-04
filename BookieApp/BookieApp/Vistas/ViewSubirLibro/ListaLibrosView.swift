//
//  ListaLirbosView.swift
//  BookieApp
//
//  Created by dam2 on 30/5/24.
//

import SwiftUI

struct ListaLibrosView: View {
    @State private var libros = [Libro]()
    @State private var idUser = ModelUser()
    @State private var userToken = UserDefaults.standard.string(forKey: "token")
    
    var body: some View {
        NavigationView {
            List(libros) { libro in
                LibroCeldaView(libro: libro)
            }
            .navigationBarTitle("Libros Subidos")
            .onAppear {
                listaLibrosUser(idUser.id)
            }
        }
    }

  
}

func listaLibrosUser(_ id: Int){

  guard let url = URL(string: "http://localhost:8080/api/libro/usuario/\(id)") else {return}

  var request = URLRequest(url: url)
  request.httpMethod = "GET"
  request.addValue("application/json", forHTTPHeaderField: "Content-type")
    request.setValue("Bearer \(userToken ?? "")", forHTTPHeaderField: "Authorization")

  let session = URLSession.shared
  session.dataTask(with: request){ (data, response, error) in
      if let data = data {
          let decoder = JSONDecoder()
          let respuesta = data
          
          print("listadp libros \(respuesta)")
      }else if let error = error {
          print("error al traer el listado\(error)")
      }

      guard let data = data else {return}

      if let modelLibro = try? JSONDecoder().decode(ModelLibro.self, from: data){
          print("Se ha traido la lista de libros correctamente")

          DispatchQueue.main.async {
              print("Listado de libros del usuario ---> \(modelLibro)")
          }
      }else{
          print("No se ha podido descodificar el json \(error)")
      }


  }.resume()
  
}



//func cargarLibros() {
//    guard let url = URL(string: "http://localhost:8080/api/libro") else { return }
//    
//    var request = URLRequest(url: url)
//    request.httpMethod = "GET"
//
//    if let authToken = UserDefaults.standard.string(forKey: "token") {
//        request.setValue("Bearer \(authToken)", forHTTPHeaderField: "Authorization")
//        print("Token de autenticación: \(authToken)")
//    } else {
//        print("No se encontró el token de autenticación")
//    }
//    
//    URLSession.shared.dataTask(with: request) { data, response, error in
//        if let error = error {
//            print("Error en la solicitud: \(error.localizedDescription)")
//            return
//        }
//
//        if let httpResponse = response as? HTTPURLResponse {
//            print("Código de estado HTTP: \(httpResponse.statusCode)")
//        }
//
//    
//    }.resume()
//}

#Preview {
    ListaLibrosView()
}
