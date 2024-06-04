//
//  UserDefaultsFavoritos.swift
//  BookieApp
//
//  Created by dam2 on 11/4/24.
//

import Foundation

class BookModelFavoritos: ObservableObject, Identifiable, Codable {
    
    var id: String
    
    @Published var book: Book?
    @Published var isFavorite: Bool
    
    init(id: String, book: Book?, isFavorite: Bool = false) {
        self.id = id
        self.book = book
        self.isFavorite = isFavorite
    }
    
    enum CodingKeys: CodingKey {
        case id, book, isFavorite
    }
    
    required init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        id = try container.decode(String.self, forKey: .id)
        book = try container.decode(Book.self, forKey: .book)
        isFavorite = try container.decode(Bool.self, forKey: .isFavorite)
    }
    
    func encode(to encoder: any Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try container.encode(id, forKey: .id)
        try container.encode(book, forKey: .book)
        try container.encode(isFavorite, forKey: .isFavorite)
    }
}
