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
    
    public func fetch(query: String) -> AnyPublisher<Book,Error>{
        
        guard let url = URL(string: "https://www.googleapis.com/books/v1/volumes?q=a") else {
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
        .decode(type: Book.self, decoder: JSONDecoder())
        .receive(on: DispatchQueue.main)
        .eraseToAnyPublisher()
    }
    
}
