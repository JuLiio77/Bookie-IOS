//
//  InicioView.swift
//  BookieApp
//
//  Created by dam2 on 11/3/24.
//

import SwiftUI

struct InicioView: View {

    @State var nombre: String = ""
    var category: [String] = ["Romance","Fantasía","Thriller","Aventuras","Terror", "Acción", "Infantil", "Tragedia", "Filosofía","Bélico", "Mistério", "Clasico", "Ciencia Ficcion", "Poesia", "Psicologia", "Biográfico", "Aficiones", "Extranjeros", "Educativo"]
        
        var body: some View {
            
                NavigationStack{
                    
                    Text("¡Bienvenido \(nombre)!")
                        .bold()
                        .font(.title)
                        .padding(.trailing, 175)
                    Text("Descubre a tu bookie favorita")
                        .padding(.trailing, 120)
                    
                    ScrollView  {
                        
                        NavigationLink(destination: ListaLibros()){
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
                            
                            NavigationLink(destination: ListaLibros()){
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
                            
                            NavigationLink(destination: ListaLibros()){
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
                            
                            NavigationLink(destination: ListaLibros()){
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
                            
                            NavigationLink(destination: ListaLibros()){
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
                    
                        NavigationLink(destination: ListaLibros()){
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
                            
                            NavigationLink(destination: ListaLibros()){
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
                            
                            NavigationLink(destination: ListaLibros()){
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
                            
                            NavigationLink(destination: ListaLibros()){
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
                            
                            NavigationLink(destination: ListaLibros()){
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
                    
                        NavigationLink(destination: ListaLibros()){
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
                            
                            NavigationLink(destination: ListaLibros()){
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
                            
                            NavigationLink(destination: ListaLibros()){
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
                            
                            NavigationLink(destination: ListaLibros()){
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
                            
                            NavigationLink(destination: ListaLibros()){
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
                    
                        NavigationLink(destination: ListaLibros()){
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
                            
                            NavigationLink(destination: ListaLibros()){
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
                            
                            NavigationLink(destination: ListaLibros()){
                                Image(systemName: "")
                                    .frame(width: 172, height: 100)
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
                            
                        }
                        
                        VStack{
                            
                            NavigationLink(destination: ListaLibros()){
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
                            
                            NavigationLink(destination: ListaLibros()){
                                Image(systemName: "")
                                    .frame(width: 172, height: 196)
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
                            
                        }
                        
                    }
                    
                        NavigationLink(destination: ListaLibros()){
                            Image(systemName: "")
                                .frame(width: 353, height: 100)
                                .background(Color.gray)
                                .cornerRadius(20)
                                .bold()
                        }
                        .overlay(
                        Text("\(category[18])")
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
