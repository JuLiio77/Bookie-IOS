//
//  IntroducirUbicacionView.swift
//  BookieApp
//
//  Created by dam2 on 11/3/24.
//

import SwiftUI

struct IntroducirUbicacionView: View {
    
@State var nombre: String = ""
@State var repetirContrasenia: String = ""
@State var correo: String = ""
@State var contrasenia: String = ""
    
    
let provinces = ["Álava", "Albacete", "Alicante", "Almería", "Asturias", "Ávila", "Badajoz", "Barcelona", "Burgos", "Cáceres", "Cádiz", "Cantabria", "Castellón", "Ciudad Real", "Córdoba", "Cuenca", "Gerona", "Granada", "Guadalajara", "Guipúzcoa", "Huelva", "Huesca", "Islas Baleares", "Jaén", "La Coruña", "La Rioja", "Las Palmas", "León", "Lérida", "Lugo", "Madrid", "Málaga", "Murcia", "Navarra", "Orense", "Palencia", "Pontevedra", "Salamanca", "Segovia", "Sevilla", "Soria", "Tarragona", "Santa Cruz de Tenerife", "Teruel", "Toledo", "Valencia", "Valladolid", "Vizcaya", "Zamora", "Zaragoza"]

  @State private var selectedProvinceIndex = 0
  @State private var provinceName = ""

var body: some View {
    VStack{
        Text("Introducir ubicación")
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .bold()
            .padding()
        
        Label("Provincia", systemImage: "")
            .labelStyle(.titleOnly)
            .padding(.top, 90)
            .padding(.trailing, 280)

        
        Picker(selection: $selectedProvinceIndex, label: Text("Provincia")) {
               ForEach(0..<provinces.count) { index in
                   Text(self.provinces[index]).tag(index)
               }
           }
        .frame(width: 322, height: 20)
        .bold()
        .padding()
        .background(Color.color)
        .cornerRadius(30)
        .tint(.black)
        
        Label("Provincia", systemImage: "")
            .labelStyle(.titleOnly)
            .padding(.top, 40)
            .padding(.trailing, 280)
        
        TextField("Ciudad", text: $nombre)
            .bold()
            .padding()
            .background(Color.color)
            .cornerRadius(30)
        
        Label("Provincia", systemImage: "")
            .labelStyle(.titleOnly)
            .padding(.top, 40)
            .padding(.trailing, 280)
        
        TextField("Código postal", text: $nombre)
            .bold()
            .padding()
            .background(Color.color)
            .cornerRadius(30)
        
        
       Button("Siguiente"){
           
       }
       .padding(20)
       .padding(.horizontal, 30)
       .background(Color.button)
       .foregroundColor(.black)
       .cornerRadius(20)
       .padding([.leading, .trailing], 10)
       .padding(.top, 75)
           
 
       
        
        Spacer()
        
        }
        .padding()
    }
}

#Preview {
    IntroducirUbicacionView()
}
