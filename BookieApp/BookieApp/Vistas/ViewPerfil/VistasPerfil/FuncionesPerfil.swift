//
//  FuncionesPerfil.swift
//  BookieApp
//
//  Created by dam2 on 28/5/24.
//

import Foundation

class FuncionesPerfil: ObservableObject{
    
    @Published var libros: [Libro] = []
    
    //Funciones para traer los libros
    func listaLibros(){

        guard let url = URL(string: "http://localhost:8080/api/libro") else {return}

        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.addValue("application/json", forHTTPHeaderField: "Content-type")


        URLSession.shared.dataTaskPublisher(for: request)
            .map { $0.data }
            .decode(type: [Libro].self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { completion in
                switch completion {
                case .finished:
                    break
                case .failure(let error):
                    print("Error fetching libros: \(error.localizedDescription)")
                }
            }, receiveValue: { [weak self] libros in
                self?.libros = libros
            })
//        let session = URLSession.shared
//        session.dataTask(with: request){ (data, response, error) in
//            if let response = response as? HTTPURLResponse{
//                if response.statusCode != 200{
//                    DispatchQueue.main.async {
//                        print("Hay un error en la peticion")
//                    }
//                }
//                return
//            }

//            guard let data = data else {return}
//
//            if let modelLibro = try? JSONDecoder().decode(Libro.self, from: data){
//                
//                print("Se ha traido la lista de libros correctamente")
//
//                DispatchQueue.main.async {
//                    print("Listado de libros ---> \(modelLibro)")
//                }
//            }else{
//                print("No se ha podido descodificar el json")
//            }


        }

}
