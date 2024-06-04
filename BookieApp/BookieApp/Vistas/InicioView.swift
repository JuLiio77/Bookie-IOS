//
//  InicioView.swift
//  BookieApp
//
//  Created by dam2 on 11/3/24.
//

import SwiftUI

struct InicioView: View {
    
    @State var nombre: String = ""
<<<<<<< HEAD:BookieApp/BookieApp/Vistas/ViewInicio/InicioView.swift
<<<<<<< HEAD:BookieApp/BookieApp/Vistas/ViewInicio/InicioView.swift
    @StateObject var userData = FuncionLogin()
=======
    @StateObject var userData = FuncionLogin()      
    let modelUser: ModelUser
>>>>>>> julio:BookieApp/BookieApp/Vistas/InicioView.swift
=======
    @StateObject var userData = FuncionLogin()        
>>>>>>> letizia:BookieApp/BookieApp/Vistas/InicioView.swift
    
    var category: [String] = ["Ciencia ficcion", "Thriller", "Terror", "Acción", "Romance", "Aventura", "Historia", "Fantasia", "Bélico", "Infantil", "Filosofía", "Misterio", "Clásico", "Poesía", "Psicología", "Aficiones", "Biografía", "Ciencia", "Extranjeros", "Tragedia", "Educativos" ]
    
    var body: some View {
        
        NavigationStack {
            
            Text("¡Bienvenido \(userData.name)!")
                .bold()
                .font(.title)
                .padding(.leading, 28)
                .padding(.top, 15)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            
            Text("Descubre a tu bookie favorita")
                .padding(.trailing, 110)
                .padding(.top, 1)
                .padding(.bottom, 10)
            
            ScrollView  {
                
                NavigationLink(destination: ListaLibros(categoria: category[0])){
                    Image(ImageResource.cienciaficc)
                        .frame(width: 342, height: 100)
                        .background(Color.gray)
                        .cornerRadius(20)
                        .bold()
                }
                
                HStack{
                    
                    VStack{
                        
                        NavigationLink(destination: ListaLibros(categoria: category[1])){
                            Image(ImageResource.thriller)
                                .frame(width: 167, height: 196)
                                .background(Color.gray)
                                .cornerRadius(20)
                        }
                        
                        NavigationLink(destination: ListaLibros(categoria: category[2])){
                            Image(ImageResource.accion)
                                .frame(width: 167, height: 100)
                                .background(Color.gray)
                                .cornerRadius(20)
                        }
                    }
                    
                    VStack{
                        
                        NavigationLink(destination: ListaLibros(categoria: category[3])){
                            Image(ImageResource.terror)
                                .frame(width: 167, height: 98)
                                .background(Color.gray)
                                .cornerRadius(20)
                        }
                        
                        NavigationLink(destination: ListaLibros(categoria: category[4])){
                            Image(ImageResource.romance)
                                .frame(width: 167, height: 196)
                                .background(Color.gray)
                                .cornerRadius(20)
                        }
                    }
                }
                
                NavigationLink(destination: ListaLibros(categoria: category[5])){
                    Image(ImageResource.aventura)
                        .frame(width: 342, height: 100)
                        .background(Color.gray)
                        .cornerRadius(20)
                        .bold()
                }
                
                HStack{
                    
                    VStack{
                        
                        NavigationLink(destination: ListaLibros(categoria: category[6])){
                            Image(ImageResource.historia)
                                .frame(width: 163, height: 188)
                                .background(Color.gray)
                                .cornerRadius(20)
                        }
                        
                        NavigationLink(destination: ListaLibros(categoria: category[7])){
                            Image(ImageResource.fantasia)
                                .frame(width: 165, height: 100)
                                .background(Color.gray)
                                .cornerRadius(20)
                        }
                    }
                    
                    VStack{
                        
                        NavigationLink(destination: ListaLibros(categoria: category[8])){
                            Image(ImageResource.belico)
                                .frame(width: 167, height: 100)
                                .background(Color.gray)
                                .cornerRadius(20)
                        }
                        
                        NavigationLink(destination: ListaLibros(categoria: category[9])){
                            Image(ImageResource.infantil)
                                .frame(width: 167, height: 196)
                                .background(Color.gray)
                                .cornerRadius(20)
                        }
                    }
                }
                
                NavigationLink(destination: ListaLibros(categoria: category[10])){
                    Image(ImageResource.filosofia)
                        .frame(width: 342, height: 100)
                        .background(Color.gray)
                        .cornerRadius(20)
                        .bold()
                }
                
                HStack{
                    
                    VStack{
                        
                        NavigationLink(destination: ListaLibros(categoria: category[11])){
                            Image(ImageResource.misterio)
                                .frame(width: 167, height: 196)
                                .background(Color.gray)
                                .cornerRadius(20)
                        }
                        
                        NavigationLink(destination: ListaLibros(categoria: category[12])){
                            Image(ImageResource.clasico)
                                .frame(width: 168, height: 100)
                                .background(Color.gray)
                                .cornerRadius(20)
                        }
                    }
                    
                    VStack{
                        
                        NavigationLink(destination: ListaLibros(categoria: category[13])){
                            Image(ImageResource.poesia)
                                .frame(width: 166, height: 100)
                                .background(Color.gray)
                                .cornerRadius(20)
                        }
                        
                        NavigationLink(destination: ListaLibros(categoria: category[14])){
                            Image(ImageResource.psicologia)
                                .frame(width: 166, height: 196)
                                .background(Color.gray)
                                .cornerRadius(20)
                        }
                    }
                }
                
                NavigationLink(destination: ListaLibros(categoria: category[15])){
                    Image(ImageResource.aficciones)
                        .frame(width: 342, height: 100)
                        .background(Color.gray)
                        .cornerRadius(20)
                        .bold()
                }
                
                HStack{
                    
                    VStack{
                        
                        NavigationLink(destination: ListaLibros(categoria: category[16])){
                            Image(ImageResource.biografico)
                                .frame(width: 167, height: 196)
                                .background(Color.gray)
                                .cornerRadius(20)
                        }
                        
                        NavigationLink(destination: ListaLibros(categoria: category[17])){
                            Image(ImageResource.ciencia)
                                .frame(width: 167, height: 100)
                                .background(Color.gray)
                                .cornerRadius(20)
                        }
                    }
                    
                    VStack {
                        
                        NavigationLink(destination: ListaLibros(categoria: category[18])){
                            Image(ImageResource.extranjero)
                                .frame(width: 167, height: 100)
                                .background(Color.gray)
                                .cornerRadius(20)
                        }
                        
                        NavigationLink(destination: ListaLibros(categoria: category[19])){
                            Image(ImageResource.tragedia)
                                .frame(width: 167, height: 196)
                                .background(Color.gray)
                                .cornerRadius(20)
                        }
                    }
                }
                
                NavigationLink(destination: ListaLibros(categoria: category[20])){
                    Image(ImageResource.educativo)
                        .frame(width: 342, height: 100)
                        .background(Color.gray)
                        .cornerRadius(20)
                        .bold()
                }
            }
            .padding(.bottom, 10)
        }
    }
}

#Preview {
    InicioView()
}
