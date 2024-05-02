//
//  BibliotecaView.swift
//  BookieApp
//
//  Created by dam2 on 14/3/24.
//

import SwiftUI

struct BibliotecaView: View {
    
    @StateObject var bookModel = BookModel()
    @State var search = ""
    
    //guardar historial de busquedas
    @State var historial: [String] = UserDefaults.standard.array(forKey: "historial") as? [String] ?? []
    
    var body: some View {
        
        NavigationStack {
            
            ScrollView {
                
                VStack {
                    
                    Text("Busca datos sobre libros en la biblioteca")
                        .bold()
                        .padding()
                    
                    ForEach(searchResults, id: \.id) { libro in
                        CeldaBibloteca(book: libro)
                            .padding(.bottom, 12)
                    }
                }
            }
        }
        .onAppear {
            bookModel.onAppear()
        }
        .searchable(text: $search, prompt: "Buscar libro") {
            if !historial.isEmpty {
                ForEach(historial, id: \.self) { busqueda in
                    Text(busqueda).onTapGesture {
                        search = busqueda
                    }
                }
            }
        }
        .onChange(of: search) { newValue in
            if !newValue.isEmpty && !historial.contains(newValue) {
                historial.insert(newValue, at: 0)
                
                if historial.count > 3 {
                    historial.removeLast()
                }
                UserDefaults.standard.set(historial, forKey: "historial")
            }
        }
    }
    
    var searchResults: [Book] {
    
        if search.isEmpty {
            return bookModel.libros
        } else {
            return bookModel.libros.filter {
                $0.volumeInfo.title.localizedCaseInsensitiveContains(search)
            }
        }
    }
}

#Preview {
    BibliotecaView()
        .environmentObject(LibrosFavoritos())
}
