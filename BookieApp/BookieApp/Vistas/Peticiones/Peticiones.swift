//
//  Peticiones.swift
//  BookieApp
//
//  Created by dam2 on 18/3/24.
//

import Foundation

class Peticiones{
    
    // funcion para descargar los datos
    func getDatosApi(apiResponse: @escaping(RespuestaApi)-> ()){
        
        guard let url = URL(string: "url donde hacer las peticiones") else {return}
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.addValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-type")
        request.timeoutInterval = 20
        
        let session = URLSession.shared
        session.dataTask(with: request){ (data, response, error) in
            if let response = response as? HTTPURLResponse{
                if response.statusCode != 200{
                    DispatchQueue.main.async {
                        print("Hay un error en la peticion")
                    }
                }
                return
            }
            
            guard let data = data else {return}
            
            if let decodedData = try? JSONDecoder().decode(RespuestaApi.self, from: data){
                print("Se ha traido los datos correctamente")
                
                DispatchQueue.main.async {
                    apiResponse(decodedData)
                }
            }else{
                print("No se ha podido descodificar el json")
            }
            
            
        }.resume()
    
    }
    
    //funcion para mandar los datos
    func enviarDatosApi(){}
    
    
    
}
