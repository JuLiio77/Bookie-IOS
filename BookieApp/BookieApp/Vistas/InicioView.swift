//
//  InicioView.swift
//  BookieApp
//
//  Created by dam2 on 11/3/24.
//

import SwiftUI

struct InicioView: View {

    @State var nombre: String = ""
    @StateObject var userData = FuncionLogin()

    
    var category: [String] = ["Romance", "Fantasía", "Thriller", "Aventuras", "Terror", "Acción", "Infantil", "Tragedia", "Bélico", "Filosofía", "Ciencia Ficción", "Misterio", "Poesía", "Clásico", "Psicología", "Biográfico", "Aficiones", "Historia", "Educativo", "Extranjeros", "Ciencia", ]
        
        var body: some View {
            
                NavigationStack{
                    
                    Text("¡Bienvenido \(userData.name)!")
                        .bold()
                        .font(.title)
                        .padding(.leading, 25)
                        .padding(.top, 15)
                        .frame(maxWidth: .infinity, alignment: .leading)

                    
                    Text("Descubre a tu bookie favorita")
                        .padding(.trailing, 120)
                        .padding(.top, 1)
                        .padding(.bottom, 10)
                    
                    ScrollView  {
                        
                        NavigationLink(destination: ListaLibros(categoria: category[0])){
                            Image(systemName: "")
                                .frame(width: 353, height: 100)
                                .background(Color.gray)
                                .cornerRadius(20)
                                .bold()
                        }
                        .overlay(
                            Text("\(category[0])")
                            .bold()
                            .padding(8)
                            .offset(x: 10, y: 10),
                        alignment: .topLeading
                        )
                        
                    HStack{
                        
                        VStack{
                            
                            NavigationLink(destination: ListaLibros(categoria: category[1])){
                                Image(systemName: "")
                                    .frame(width: 172, height: 196)
                                    .background(Color.gray)
                                    .cornerRadius(20)
                            }
                                .overlay(
                                Text("\(category[1])")
                                    .bold()
                                    .padding(8)
                                    .offset(x: 10, y: 10),
                                alignment: .topLeading
                            )
                            
                            NavigationLink(destination: ListaLibros(categoria: category[2])){
                                Image(systemName: "")
                                    .frame(width: 172, height: 100)
                                    .background(Color.gray)
                                    .cornerRadius(20)
                            }
                                .overlay(
                                Text("\(category[2])")
                                    .bold()
                                    .padding(8)
                                    .offset(x: 10, y: 10),
                                alignment: .topLeading
                            )
                            
                        }
                        
                        VStack{
                            
                            NavigationLink(destination: ListaLibros(categoria: category[3])){
                                Image(systemName: "")
                                    .frame(width: 172, height: 100)
                                    .background(Color.gray)
                                    .cornerRadius(20)
                            }
                                .overlay(
                                Text("\(category[3])")
                                    .bold()
                                    .padding(8)
                                    .offset(x: 10, y: 10),
                                alignment: .topLeading
                            )
                            
                            NavigationLink(destination: ListaLibros(categoria: category[4])){
                                Image(systemName: "")
                                    .frame(width: 172, height: 196)
                                    .background(Color.gray)
                                    .cornerRadius(20)
                            }
                                .overlay(
                                Text("\(category[4])")
                                    .bold()
                                    .padding(8)
                                    .offset(x: 10, y: 10),
                                alignment: .topLeading
                            )
                            
                        }
                        
                    }
                    
                        NavigationLink(destination: ListaLibros(categoria: category[5])){
                            Image(systemName: "")
                                .frame(width: 353, height: 100)
                                .background(Color.gray)
                                .cornerRadius(20)
                                .bold()
                        }
                        .overlay(
                        Text("\(category[5])")
                            .bold()
                            .padding(8)
                            .offset(x: 10, y: 10),
                        alignment: .topLeading
                    )
                    HStack{
                        
                        VStack{
                            
                            NavigationLink(destination: ListaLibros(categoria: category[6])){
                                Image(systemName: "")
                                    .frame(width: 172, height: 196)
                                    .background(Color.gray)
                                    .cornerRadius(20)
                            }
                                .overlay(
                                Text("\(category[6])")
                                    .bold()
                                    .padding(8)
                                    .offset(x: 10, y: 10),
                                alignment: .topLeading
                            )
                            
                            NavigationLink(destination: ListaLibros(categoria: category[7])){
                                Image(systemName: "")
                                    .frame(width: 172, height: 100)
                                    .background(Color.gray)
                                    .cornerRadius(20)
                            }
                                .overlay(
                                Text("\(category[7])")
                                    .bold()
                                    .padding(8)
                                    .offset(x: 10, y: 10),
                                alignment: .topLeading
                            )
                            
                        }
                        
                        VStack{
                            
                            NavigationLink(destination: ListaLibros(categoria: category[8])){
                                Image(systemName: "")
                                    .frame(width: 172, height: 100)
                                    .background(Color.gray)
                                    .cornerRadius(20)
                            }
                                .overlay(
                                Text("\(category[8])")
                                    .bold()
                                    .padding(8)
                                    .offset(x: 10, y: 10),
                                alignment: .topLeading
                            )
                            
                            NavigationLink(destination: ListaLibros(categoria: category[9])){
                                Image(systemName: "")
                                    .frame(width: 172, height: 196)
                                    .background(Color.gray)
                                    .cornerRadius(20)
                            }
                                .overlay(
                                Text("\(category[9])")
                                    .bold()
                                    .padding(8)
                                    .offset(x: 10, y: 10),
                                alignment: .topLeading
                            )
                            
                        }
                        
                    }
                    
                        NavigationLink(destination: ListaLibros(categoria: category[10])){
                            Image(systemName: "")
                                .frame(width: 353, height: 100)
                                .background(Color.gray)
                                .cornerRadius(20)
                                .bold()
                        }
                        .overlay(
                        Text("\(category[10])")
                            .bold()
                            .padding(8)
                            .offset(x: 10, y: 10),
                        alignment: .topLeading
                    )
                    HStack{
                        
                        VStack{
                            
                            NavigationLink(destination: ListaLibros(categoria: category[11])){
                                Image(systemName: "")
                                    .frame(width: 172, height: 196)
                                    .background(Color.gray)
                                    .cornerRadius(20)
                            }
                                .overlay(
                                Text("\(category[11])")
                                    .bold()
                                    .padding(8)
                                    .offset(x: 10, y: 10),
                                alignment: .topLeading
                            )
                            
                            NavigationLink(destination: ListaLibros(categoria: category[12])){
                                Image(systemName: "")
                                    .frame(width: 172, height: 100)
                                    .background(Color.gray)
                                    .cornerRadius(20)
                            }
                                .overlay(
                                Text("\(category[12])")
                                    .bold()
                                    .padding(8)
                                    .offset(x: 10, y: 10),
                                alignment: .topLeading
                            )
                            
                        }
                        
                        VStack{
                            
                            NavigationLink(destination: ListaLibros(categoria: category[13])){
                                Image(systemName: "")
                                    .frame(width: 172, height: 100)
                                    .background(Color.gray)
                                    .cornerRadius(20)
                            }
                                .overlay(
                                Text("\(category[13])")
                                    .bold()
                                    .padding(8)
                                    .offset(x: 10, y: 10),
                                alignment: .topLeading
                            )
                            
                            NavigationLink(destination: ListaLibros(categoria: category[14])){
                                Image(systemName: "")
                                    .frame(width: 172, height: 196)
                                    .background(Color.gray)
                                    .cornerRadius(20)
                            }
                                .overlay(
                                Text("\(category[14])")
                                    .bold()
                                    .padding(8)
                                    .offset(x: 10, y: 10),
                                alignment: .topLeading
                            )
                            
                        }
                        
                    }
                    
                        NavigationLink(destination: ListaLibros(categoria: category[15])){
                            Image(systemName: "")
                                .frame(width: 353, height: 100)
                                .background(Color.gray)
                                .cornerRadius(20)
                                .bold()
                        }
                        .overlay(
                        Text("\(category[15])")
                            .bold()
                            .padding(8)
                            .offset(x: 10, y: 10),
                        alignment: .topLeading
                    )
                    HStack{
                        
                        VStack{
                            
                            NavigationLink(destination: ListaLibros(categoria: category[16])){
                                Image(systemName: "")
                                    .frame(width: 172, height: 196)
                                    .background(Color.gray)
                                    .cornerRadius(20)
                            }
                                .overlay(
                                Text("\(category[16])")
                                    .bold()
                                    .padding(8)
                                    .offset(x: 10, y: 10),
                                alignment: .topLeading
                            )
                            
                            NavigationLink(destination: ListaLibros(categoria: category[17])){
                                Image(systemName: "")
                                    .frame(width: 172, height: 100)
                                    .background(Color.gray)
                                    .cornerRadius(20)
                            }
                                .overlay(
                                Text("\(category[17])")
                                    .bold()
                                    .padding(8)
                                    .offset(x: 10, y: 10),
                                alignment: .topLeading
                            )
                            
                        }
                        
                        VStack{
                            
                            NavigationLink(destination: ListaLibros(categoria: category[18])){
                                Image(systemName: "")
                                    .frame(width: 172, height: 100)
                                    .background(Color.gray)
                                    .cornerRadius(20)
                            }
                                .overlay(
                                Text("\(category[18])")
                                    .bold()
                                    .padding(8)
                                    .offset(x: 10, y: 10),
                                alignment: .topLeading
                            )
                            
                            NavigationLink(destination: ListaLibros(categoria: category[19])){
                                Image(systemName: "")
                                    .frame(width: 172, height: 196)
                                    .background(Color.gray)
                                    .cornerRadius(20)
                            }
                                .overlay(
                                Text("\(category[19])")
                                    .bold()
                                    .padding(8)
                                    .offset(x: 10, y: 10),
                                alignment: .topLeading
                            )
                            
                        }
                        
                    }
                    
                        NavigationLink(destination: ListaLibros(categoria: category[20])){
                            Image(systemName: "")
                                .frame(width: 353, height: 100)
                                .background(Color.gray)
                                .cornerRadius(20)
                                .bold()
                        }
                        .overlay(
                        Text("\(category[20])")
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
