//
//  BookService.swift
//  BookieApp
//
//  Created by dam2 on 18/3/24.
//

import Foundation
import Combine

struct BookService{
    
    public static let shared: BookService = BookService()
    
    public func fetch() -> AnyPublisher<RespuestaApi ,Error>{
        
        guard let url = URL(string: "La url para pedir peticiones") else {
            let error = URLError(.badURL)
            return Fail(error: error)
                .eraseToAnyPublisher()
        }
        
        return URLSession.shared.dataTaskPublisher(for: url).tryMap({data, response in
            
            guard let httpResponse = response as? HTTPURLResponse else{
                throw URLError(URLError.unknown)
            }
            
            guard httpResponse.statusCode == 200 else {
                
                let code = URLError.Code(rawValue: httpResponse.statusCode)
                throw URLError(code)
            }
            return data
        })
        .decode(type: RespuestaApi.self, decoder: JSONDecoder())
        .receive(on: DispatchQueue.main)
        .eraseToAnyPublisher()
    }
    
}
