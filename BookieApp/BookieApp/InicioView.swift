//
//  InicioView.swift
//  BookieApp
//
//  Created by dam2 on 12/3/24.
//

import SwiftUI

struct InicioView: View {
    @State var nombre: String = ""
       
       var body: some View {
           
           
               VStack{
                   
                   
                   Text("¡Bienvenido \(nombre)!")
                       .bold()
                       .font(.title)
                       .padding(.trailing, 175)
                   Text("Descubre a tu bookie favorita")
                       .padding(.trailing, 120)
                   
           ScrollView  {
                   
                   Image(systemName: "")
                       .frame(width: 353, height: 100)
                       .background(Color.gray)
                       .cornerRadius(20)
                       .bold()
                       .overlay(
                       Text("Romance")
                           .bold()
                           .padding(8)
                           .offset(x: 10, y: 10),
                       alignment: .topLeading
                   )
                       
                   HStack{
                       
                       VStack{
                           
                           
                           Image(systemName: "")
                               .frame(width: 172, height: 196)
                               .background(Color.gray)
                               .cornerRadius(20)
                               .overlay(
                               Text("Fantasía")
                                   .bold()
                                   .padding(8)
                                   .offset(x: 10, y: 10),
                               alignment: .topLeading
                           )
                           
                           
                           Image(systemName: "")
                               .frame(width: 172, height: 100)
                               .background(Color.gray)
                               .cornerRadius(20)
                               .overlay(
                               Text("Aventuras")
                                   .bold()
                                   .padding(8)
                                   .offset(x: 10, y: 10),
                               alignment: .topLeading
                           )
                           
                       }
                       
                       VStack{
                           
                           
                           Image(systemName: "")
                               .frame(width: 172, height: 100)
                               .background(Color.gray)
                               .cornerRadius(20)
                               .overlay(
                               Text("Thriller")
                                   .bold()
                                   .padding(8)
                                   .offset(x: 10, y: 10),
                               alignment: .topLeading
                           )
                           
                           
                           Image(systemName: "")
                               .frame(width: 172, height: 196)
                               .background(Color.gray)
                               .cornerRadius(20)
                               .overlay(
                               Text("Terror")
                                   .bold()
                                   .padding(8)
                                   .offset(x: 10, y: 10),
                               alignment: .topLeading
                           )
                           
                       }
                       
                   }
                   
                   
                   Image(systemName: "")
                       .frame(width: 353, height: 100)
                       .background(Color.gray)
                       .cornerRadius(20)
                       .bold()
                       .overlay(
                       Text("Acción")
                           .bold()
                           .padding(8)
                           .offset(x: 10, y: 10),
                       alignment: .topLeading
                   )
                   HStack{
                       
                       VStack{
                           
                           
                           Image(systemName: "")
                               .frame(width: 172, height: 196)
                               .background(Color.gray)
                               .cornerRadius(20)
                               .overlay(
                               Text("Infantil")
                                   .bold()
                                   .padding(8)
                                   .offset(x: 10, y: 10),
                               alignment: .topLeading
                           )
                           
                           
                           Image(systemName: "")
                               .frame(width: 172, height: 100)
                               .background(Color.gray)
                               .cornerRadius(20)
                               .overlay(
                               Text("Bélico")
                                   .bold()
                                   .padding(8)
                                   .offset(x: 10, y: 10),
                               alignment: .topLeading
                           )
                           
                       }
                       
                       VStack{
                           
                           
                           Image(systemName: "")
                               .frame(width: 172, height: 100)
                               .background(Color.gray)
                               .cornerRadius(20)
                               .overlay(
                               Text("Tragedia")
                                   .bold()
                                   .padding(8)
                                   .offset(x: 10, y: 10),
                               alignment: .topLeading
                           )
                           
                           
                           Image(systemName: "")
                               .frame(width: 172, height: 196)
                               .background(Color.gray)
                               .cornerRadius(20)
                               .overlay(
                               Text("Filosofia")
                                   .bold()
                                   .padding(8)
                                   .offset(x: 10, y: 10),
                               alignment: .topLeading
                           )
                           
                       }
                       
                   }
                   
                   
                   Image(systemName: "")
                       .frame(width: 353, height: 100)
                       .background(Color.gray)
                       .cornerRadius(20)
                       .bold()
                       .overlay(
                       Text("Ciencia ficción")
                           .bold()
                           .padding(8)
                           .offset(x: 10, y: 10),
                       alignment: .topLeading
                   )
                   HStack{
                       
                       VStack{
                           
                           
                           Image(systemName: "")
                               .frame(width: 172, height: 196)
                               .background(Color.gray)
                               .cornerRadius(20)
                               .overlay(
                               Text("Misterio")
                                   .bold()
                                   .padding(8)
                                   .offset(x: 10, y: 10),
                               alignment: .topLeading
                           )
                           
                           
                           Image(systemName: "")
                               .frame(width: 172, height: 100)
                               .background(Color.gray)
                               .cornerRadius(20)
                               .overlay(
                               Text("Clásico")
                                   .bold()
                                   .padding(8)
                                   .offset(x: 10, y: 10),
                               alignment: .topLeading
                           )
                           
                       }
                       
                       VStack{
                           
                           
                           Image(systemName: "")
                               .frame(width: 172, height: 100)
                               .background(Color.gray)
                               .cornerRadius(20)
                               .overlay(
                               Text("Poesía")
                                   .bold()
                                   .padding(8)
                                   .offset(x: 10, y: 10),
                               alignment: .topLeading
                           )
                           
                           
                           Image(systemName: "")
                               .frame(width: 172, height: 196)
                               .background(Color.gray)
                               .cornerRadius(20)
                               .overlay(
                               Text("Psicología")
                                   .bold()
                                   .padding(8)
                                   .offset(x: 10, y: 10),
                               alignment: .topLeading
                           )
                           
                       }
                       
                   }
                   
                   Image(systemName: "")
                       .frame(width: 353, height: 100)
                       .background(Color.gray)
                       .cornerRadius(20)
                       .bold()
                       .overlay(
                       Text("Biográfico")
                           .bold()
                           .padding(8)
                           .offset(x: 10, y: 10),
                       alignment: .topLeading
                   )
                   HStack{
                       
                       VStack{
                           
                           
                           Image(systemName: "")
                               .frame(width: 172, height: 196)
                               .background(Color.gray)
                               .cornerRadius(20)
                               .overlay(
                               Text("Aficiones")
                                   .bold()
                                   .padding(8)
                                   .offset(x: 10, y: 10),
                               alignment: .topLeading
                           )
                           
                           
                           Image(systemName: "")
                               .frame(width: 172, height: 100)
                               .background(Color.gray)
                               .cornerRadius(20)
                               .overlay(
                               Text("Educativo")
                                   .bold()
                                   .padding(8)
                                   .offset(x: 10, y: 10),
                               alignment: .topLeading
                           )
                           
                       }
                       
                       VStack{
                           
                           
                           Image(systemName: "")
                               .frame(width: 172, height: 100)
                               .background(Color.gray)
                               .cornerRadius(20)
                               .overlay(
                               Text("Historia")
                                   .bold()
                                   .padding(8)
                                   .offset(x: 10, y: 10),
                               alignment: .topLeading
                           )
                           
                           
                           Image(systemName: "")
                               .frame(width: 172, height: 196)
                               .background(Color.gray)
                               .cornerRadius(20)
                               .overlay(
                               Text("Extranjeros")
                                   .bold()
                                   .padding(8)
                                   .offset(x: 10, y: 10),
                               alignment: .topLeading
                           )
                           
                       }
                       
                   }
                   
                   Image(systemName: "")
                       .frame(width: 353, height: 100)
                       .background(Color.gray)
                       .cornerRadius(20)
                       .bold()
                       .overlay(
                       Text("Ciencia")
                           .bold()
                           .padding(8)
                           .offset(x: 10, y: 10),
                       alignment: .topLeading
                   )
               }
           }    }
}

#Preview {
    InicioView()
}
