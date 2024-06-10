//
//  LibroData.swift
//  BookieApp
//
//  Created by dam2 on 6/6/24.
//

import Foundation

class LibroData: ObservableObject {
    
    @Published var libros: [Libros] = []
    init() {
        load()
    }
    
    func load() {
        if let url = Bundle.main.url(forResource: "libros", withExtension: "json") {
            do {
                
                let data = try Data(contentsOf: url)
                let decodedData = try JSONDecoder().decode([Libros].self, from: data)
                
                DispatchQueue.main.async {
                    
                    self.libros = decodedData
                    
                }
                
                print("Data loaded successfully: \(decodedData)")
            } catch { print("Error loading data: \(error)") }
        } else { print("Could not find data.json file.") } }
                    

            }



    

