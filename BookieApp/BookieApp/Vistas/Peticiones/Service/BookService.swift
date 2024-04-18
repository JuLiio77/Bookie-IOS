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
    
    public func fetch(query: String) -> AnyPublisher<[Book], Error> {
        let query = query.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
        guard let url = URL(string: "https://www.googleapis.com/books/v1/volumes?q=\(query)") else {
            let error = URLError(.badURL)
            return Fail(error: error).eraseToAnyPublisher()
        }
        
        return URLSession.shared.dataTaskPublisher(for: url).tryMap({ data, response in
            guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
                throw URLError(.badServerResponse)
            }
            return data
        })
        .decode(type: BooksResponse.self, decoder: JSONDecoder())
        .map { $0.items }
        .receive(on: DispatchQueue.main)
        .eraseToAnyPublisher()
    }

    // Estructura para manejar la respuesta de la API que incluye los libros
    struct BooksResponse: Decodable {
        let items: [Book]
    }
}
