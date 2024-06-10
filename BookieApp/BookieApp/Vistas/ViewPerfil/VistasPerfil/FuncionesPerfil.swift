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
            }, receiveValue: { [weak self] libro in

                guard let self = self else { return }
                print(libro)
                // poner que si los libros que vienen son iguales que los que hay que no los meta
                //self?.libros = libro
                
                let librosNuevos = libro.filter{ book in
                    !self.libros.contains(where: { $0.libroId == book.libroId})
                }
                
                
            })
        
        }
    


}
