//
//  InicioView.swift
//  BookieApp
//
//  Created by dam2 on 11/3/24.
//

import SwiftUI

struct InicioView: View {
    @State var nombre: String = ""

    var category: [String] = ["Romance", "Fantasía", "Thriller", "Aventuras", "Terror", "Acción", "Infantil", "Tragedia", "Filosofía","Bélico", "Mistério", "Clasico", "Ciencia Ficcion", "Poesia", "Psicologia", "Biográfico", "Aficiones", "Extranjeros", "Educativo"]
>>>>>>> Stashed changes
        
        var body: some View {
            
            
                VStack{
                    
                    
                    Text("¡Bienvenido \(nombre)!")
                        .bold()
                        .font(.title)
                        .padding(.trailing, 175)
                    Text("Descubre a tu bookie favorita")
                        .padding(.trailing, 120)
                    
<<<<<<< Updated upstream
            ScrollView  {
                    
                    Image(systemName: "")
                        .frame(width: 353, height: 100)
                        .background(Color.gray)
                        .cornerRadius(20)
                        .bold()
=======
                    ScrollView  {
                        
                        NavigationLink(destination: ListaLibros(categoria: category[0])){
                            Image(systemName: "")
                                .frame(width: 353, height: 100)
                                .background(Color.gray)
                                .cornerRadius(20)
                                .bold()
                        }
>>>>>>> Stashed changes
                        .overlay(
                        Text("Romance")
                            .bold()
                            .padding(8)
                            .offset(x: 10, y: 10),
                        alignment: .topLeading
                    )
                        
                    HStack{
                        
                        VStack{
                            
<<<<<<< Updated upstream
                            
                            Image(systemName: "")
                                .frame(width: 172, height: 196)
                                .background(Color.gray)
                                .cornerRadius(20)
=======
                            NavigationLink(destination: ListaLibros(categoria: category[1])){
                                Image(systemName: "")
                                    .frame(width: 172, height: 196)
                                    .background(Color.gray)
                                    .cornerRadius(20)
                            }
>>>>>>> Stashed changes
                                .overlay(
                                Text("Fantasía")
                                    .bold()
                                    .padding(8)
                                    .offset(x: 10, y: 10),
                                alignment: .topLeading
                            )
                            
<<<<<<< Updated upstream
                            
                            Image(systemName: "")
                                .frame(width: 172, height: 100)
                                .background(Color.gray)
                                .cornerRadius(20)
=======
                            NavigationLink(destination: ListaLibros(categoria: category[2])){
                                Image(systemName: "")
                                    .frame(width: 172, height: 100)
                                    .background(Color.gray)
                                    .cornerRadius(20)
                            }
>>>>>>> Stashed changes
                                .overlay(
                                Text("Aventuras")
                                    .bold()
                                    .padding(8)
                                    .offset(x: 10, y: 10),
                                alignment: .topLeading
                            )
                            
                        }
                        
                        VStack{
                            
<<<<<<< Updated upstream
                            
                            Image(systemName: "")
                                .frame(width: 172, height: 100)
                                .background(Color.gray)
                                .cornerRadius(20)
=======
                            NavigationLink(destination: ListaLibros(categoria: category[3])){
                                Image(systemName: "")
                                    .frame(width: 172, height: 100)
                                    .background(Color.gray)
                                    .cornerRadius(20)
                            }
>>>>>>> Stashed changes
                                .overlay(
                                Text("Thriller")
                                    .bold()
                                    .padding(8)
                                    .offset(x: 10, y: 10),
                                alignment: .topLeading
                            )
                            
<<<<<<< Updated upstream
                            
                            Image(systemName: "")
                                .frame(width: 172, height: 196)
                                .background(Color.gray)
                                .cornerRadius(20)
=======
                            NavigationLink(destination: ListaLibros(categoria: category[4])){
                                Image(systemName: "")
                                    .frame(width: 172, height: 196)
                                    .background(Color.gray)
                                    .cornerRadius(20)
                            }
>>>>>>> Stashed changes
                                .overlay(
                                Text("Terror")
                                    .bold()
                                    .padding(8)
                                    .offset(x: 10, y: 10),
                                alignment: .topLeading
                            )
                            
                        }
                        
                    }
                    
<<<<<<< Updated upstream
                    
                    Image(systemName: "")
                        .frame(width: 353, height: 100)
                        .background(Color.gray)
                        .cornerRadius(20)
                        .bold()
=======
                        NavigationLink(destination: ListaLibros(categoria: category[4])){
                            Image(systemName: "")
                                .frame(width: 353, height: 100)
                                .background(Color.gray)
                                .cornerRadius(20)
                                .bold()
                        }
>>>>>>> Stashed changes
                        .overlay(
                        Text("Acción")
                            .bold()
                            .padding(8)
                            .offset(x: 10, y: 10),
                        alignment: .topLeading
                    )
                    HStack{
                        
                        VStack{
                            
<<<<<<< Updated upstream
                            
                            Image(systemName: "")
                                .frame(width: 172, height: 196)
                                .background(Color.gray)
                                .cornerRadius(20)
=======
                            NavigationLink(destination: ListaLibros(categoria: category[5])){
                                Image(systemName: "")
                                    .frame(width: 172, height: 196)
                                    .background(Color.gray)
                                    .cornerRadius(20)
                            }
>>>>>>> Stashed changes
                                .overlay(
                                Text("Infantil")
                                    .bold()
                                    .padding(8)
                                    .offset(x: 10, y: 10),
                                alignment: .topLeading
                            )
                            
<<<<<<< Updated upstream
                            
                            Image(systemName: "")
                                .frame(width: 172, height: 100)
                                .background(Color.gray)
                                .cornerRadius(20)
=======
                            NavigationLink(destination: ListaLibros(categoria: category[6])){
                                Image(systemName: "")
                                    .frame(width: 172, height: 100)
                                    .background(Color.gray)
                                    .cornerRadius(20)
                            }
>>>>>>> Stashed changes
                                .overlay(
                                Text("Bélico")
                                    .bold()
                                    .padding(8)
                                    .offset(x: 10, y: 10),
                                alignment: .topLeading
                            )
                            
                        }
                        
                        VStack{
                            
<<<<<<< Updated upstream
                            
                            Image(systemName: "")
                                .frame(width: 172, height: 100)
                                .background(Color.gray)
                                .cornerRadius(20)
=======
                            NavigationLink(destination: ListaLibros(categoria: category[7])){
                                Image(systemName: "")
                                    .frame(width: 172, height: 100)
                                    .background(Color.gray)
                                    .cornerRadius(20)
                            }
>>>>>>> Stashed changes
                                .overlay(
                                Text("Tragedia")
                                    .bold()
                                    .padding(8)
                                    .offset(x: 10, y: 10),
                                alignment: .topLeading
                            )
                            
<<<<<<< Updated upstream
                            
                            Image(systemName: "")
                                .frame(width: 172, height: 196)
                                .background(Color.gray)
                                .cornerRadius(20)
=======
                            NavigationLink(destination: ListaLibros(categoria: category[8])){
                                Image(systemName: "")
                                    .frame(width: 172, height: 196)
                                    .background(Color.gray)
                                    .cornerRadius(20)
                            }
>>>>>>> Stashed changes
                                .overlay(
                                Text("Filosofia")
                                    .bold()
                                    .padding(8)
                                    .offset(x: 10, y: 10),
                                alignment: .topLeading
                            )
                            
                        }
                        
                    }
                    
<<<<<<< Updated upstream
                    
                    Image(systemName: "")
                        .frame(width: 353, height: 100)
                        .background(Color.gray)
                        .cornerRadius(20)
                        .bold()
=======
                        NavigationLink(destination: ListaLibros(categoria: category[9])){
                            Image(systemName: "")
                                .frame(width: 353, height: 100)
                                .background(Color.gray)
                                .cornerRadius(20)
                                .bold()
                        }
>>>>>>> Stashed changes
                        .overlay(
                        Text("Ciencia ficción")
                            .bold()
                            .padding(8)
                            .offset(x: 10, y: 10),
                        alignment: .topLeading
                    )
                    HStack{
                        
                        VStack{
                            
<<<<<<< Updated upstream
                            
                            Image(systemName: "")
                                .frame(width: 172, height: 196)
                                .background(Color.gray)
                                .cornerRadius(20)
=======
                            NavigationLink(destination: ListaLibros(categoria: category[10])){
                                Image(systemName: "")
                                    .frame(width: 172, height: 196)
                                    .background(Color.gray)
                                    .cornerRadius(20)
                            }
>>>>>>> Stashed changes
                                .overlay(
                                Text("Misterio")
                                    .bold()
                                    .padding(8)
                                    .offset(x: 10, y: 10),
                                alignment: .topLeading
                            )
                            
<<<<<<< Updated upstream
                            
                            Image(systemName: "")
                                .frame(width: 172, height: 100)
                                .background(Color.gray)
                                .cornerRadius(20)
=======
                            NavigationLink(destination: ListaLibros(categoria: category[11])){
                                Image(systemName: "")
                                    .frame(width: 172, height: 100)
                                    .background(Color.gray)
                                    .cornerRadius(20)
                            }
>>>>>>> Stashed changes
                                .overlay(
                                Text("Clásico")
                                    .bold()
                                    .padding(8)
                                    .offset(x: 10, y: 10),
                                alignment: .topLeading
                            )
                            
                        }
                        
                        VStack{
                            
<<<<<<< Updated upstream
                            
                            Image(systemName: "")
                                .frame(width: 172, height: 100)
                                .background(Color.gray)
                                .cornerRadius(20)
=======
                            NavigationLink(destination: ListaLibros(categoria: category[12])){
                                Image(systemName: "")
                                    .frame(width: 172, height: 100)
                                    .background(Color.gray)
                                    .cornerRadius(20)
                            }
>>>>>>> Stashed changes
                                .overlay(
                                Text("Poesía")
                                    .bold()
                                    .padding(8)
                                    .offset(x: 10, y: 10),
                                alignment: .topLeading
                            )
                            
<<<<<<< Updated upstream
                            
                            Image(systemName: "")
                                .frame(width: 172, height: 196)
                                .background(Color.gray)
                                .cornerRadius(20)
=======
                            NavigationLink(destination: ListaLibros(categoria: category[13])){
                                Image(systemName: "")
                                    .frame(width: 172, height: 196)
                                    .background(Color.gray)
                                    .cornerRadius(20)
                            }
>>>>>>> Stashed changes
                                .overlay(
                                Text("Psicología")
                                    .bold()
                                    .padding(8)
                                    .offset(x: 10, y: 10),
                                alignment: .topLeading
                            )
                            
                        }
                        
                    }
                    
<<<<<<< Updated upstream
                    Image(systemName: "")
                        .frame(width: 353, height: 100)
                        .background(Color.gray)
                        .cornerRadius(20)
                        .bold()
=======
                        NavigationLink(destination: ListaLibros(categoria: category[14])){
                            Image(systemName: "")
                                .frame(width: 353, height: 100)
                                .background(Color.gray)
                                .cornerRadius(20)
                                .bold()
                        }
>>>>>>> Stashed changes
                        .overlay(
                        Text("Biográfico")
                            .bold()
                            .padding(8)
                            .offset(x: 10, y: 10),
                        alignment: .topLeading
                    )
                    HStack{
                        
                        VStack{
                            
<<<<<<< Updated upstream
                            
                            Image(systemName: "")
                                .frame(width: 172, height: 196)
                                .background(Color.gray)
                                .cornerRadius(20)
=======
                            NavigationLink(destination: ListaLibros(categoria: category[15])){
                                Image(systemName: "")
                                    .frame(width: 172, height: 196)
                                    .background(Color.gray)
                                    .cornerRadius(20)
                            }
>>>>>>> Stashed changes
                                .overlay(
                                Text("Aficiones")
                                    .bold()
                                    .padding(8)
                                    .offset(x: 10, y: 10),
                                alignment: .topLeading
                            )
                            
<<<<<<< Updated upstream
                            
                            Image(systemName: "")
                                .frame(width: 172, height: 100)
                                .background(Color.gray)
                                .cornerRadius(20)
=======
                            NavigationLink(destination: ListaLibros(categoria: category[16])){
                                Image(systemName: "")
                                    .frame(width: 172, height: 100)
                                    .background(Color.gray)
                                    .cornerRadius(20)
                            }
>>>>>>> Stashed changes
                                .overlay(
                                Text("Educativo")
                                    .bold()
                                    .padding(8)
                                    .offset(x: 10, y: 10),
                                alignment: .topLeading
                            )
                            
                        }
                        
                        VStack{
                            
<<<<<<< Updated upstream
                            
                            Image(systemName: "")
                                .frame(width: 172, height: 100)
                                .background(Color.gray)
                                .cornerRadius(20)
=======
                            NavigationLink(destination: ListaLibros(categoria: category[17])){
                                Image(systemName: "")
                                    .frame(width: 172, height: 100)
                                    .background(Color.gray)
                                    .cornerRadius(20)
                            }
>>>>>>> Stashed changes
                                .overlay(
                                Text("Historia")
                                    .bold()
                                    .padding(8)
                                    .offset(x: 10, y: 10),
                                alignment: .topLeading
                            )
                            
<<<<<<< Updated upstream
                            
                            Image(systemName: "")
                                .frame(width: 172, height: 196)
                                .background(Color.gray)
                                .cornerRadius(20)
=======
                            NavigationLink(destination: ListaLibros(categoria: category[18])){
                                Image(systemName: "")
                                    .frame(width: 172, height: 196)
                                    .background(Color.gray)
                                    .cornerRadius(20)
                            }
>>>>>>> Stashed changes
                                .overlay(
                                Text("Extranjeros")
                                    .bold()
                                    .padding(8)
                                    .offset(x: 10, y: 10),
                                alignment: .topLeading
                            )
                            
                        }
                        
                    }
                    
<<<<<<< Updated upstream
                    Image(systemName: "")
                        .frame(width: 353, height: 100)
                        .background(Color.gray)
                        .cornerRadius(20)
                        .bold()
=======
                        NavigationLink(destination: ListaLibros(categoria: category[18])){
                            Image(systemName: "")
                                .frame(width: 353, height: 100)
                                .background(Color.gray)
                                .cornerRadius(20)
                                .bold()
                        }
>>>>>>> Stashed changes
                        .overlay(
                        Text("Ciencia")
                            .bold()
                            .padding(8)
                            .offset(x: 10, y: 10),
                        alignment: .topLeading
                    )
                }
            }
        }
    }

#Preview {
    InicioView()
}
