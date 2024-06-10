//
//  DetalleLibroView.swift
//  BookieApp
//
//  Created by dam2 on 6/6/24.
//

import SwiftUI

struct DetalleLibroView: View {
    let libro: Libros
    
    var body: some View {
        VStack { 
            ZStack{
            
            Rectangle()
                .frame(height: 80)
                .foregroundStyle(Color.button)
                .opacity(0.3)
            
            Text("Titulo")
                .font(.title2)
                .foregroundStyle(.brown)
                .bold()
                .padding(.bottom, 30)
                .padding(.trailing, 270)
            
                Text(libro.title)
                .padding(.top, 20)
                .padding(.trailing, 150)
        }
        .padding([.top,.bottom], 15)
        //.background(Color.button)
        
        LazyVGrid(columns: [GridItem(.flexible(minimum: 140, maximum: 220), spacing: 100),
                            GridItem(.adaptive(minimum: 140, maximum: 250), spacing: 100)], content: {
            
            Text("Autor")
                .font(.title2)
                .foregroundStyle(.brown)
                .bold()
            Text("Genero")
                .font(.title2)
                .foregroundStyle(.brown)
                .bold()
            Text(libro.author)
            
            
            Text(libro.genre)
            
            Text("Estado")
                .font(.title2)
                .foregroundStyle(.brown)
                .bold()
                .padding(.top, 2)
            
            Text("Nº Paginas")
                .font(.title2)
                .foregroundStyle(.brown)
                .bold()
                .padding(.top, 2
                )
            Text("Nuevo")
            Text("")
            Text("Editorial")
                .font(.title2)
                .foregroundStyle(.brown)
                .bold()
                .padding(.top, 2)
            Text("")
            
            
            Text(libro.publisher)
            
        })
        
        Text("Filtros")
            .font(.title2)
            .foregroundStyle(.brown)
            .bold()
            .padding(.trailing, 250)
            .padding(.top, 25)
        
        HStack{
            ViewFotoPerfil()
                .frame(width: 50)
            ViewFotoPerfil()
                .frame(width: 50)
            ViewFotoPerfil()
                .frame(width: 50)
            ViewFotoPerfil()
                .frame(width: 50)
        }
        
        
        HStack{
            
            NavigationLink("Intercambio", destination: ChatView())
                .padding(15)
                .padding(.horizontal, 20)
                .background(.brown)
                .foregroundColor(.white)
                .cornerRadius(30)
                .padding([.leading, .trailing], 10)
                .padding(.top, 20)
                .navigationBarBackButtonHidden(true)
            
            NavigationLink("Escribir Reseña", destination: ReviewView())
                .padding(15)
                .background(Color.button)
                .foregroundColor(.white)
                .cornerRadius(30)
                .padding([.leading, .trailing], 10)
                .padding(.top, 20)
             
        }
        
        Spacer()
 
        }
        .navigationBarTitle(Text(libro.title), displayMode: .inline)
    }
}

#Preview {
    DetalleLibroView(libro: Libros(id: 1, title: "Cien años de soledad", author: "Gabriel García Márquez", publisher: "Editorial Sudamericana", pages: 471, genre: "Realismo mágico", synopsis: "La historia de la familia Buendía en el pueblo ficticio de Macondo.", user: "María"))
}
