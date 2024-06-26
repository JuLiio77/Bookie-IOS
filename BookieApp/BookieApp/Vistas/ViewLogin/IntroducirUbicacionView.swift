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
    @EnvironmentObject var datos: FuncionLogin
    
    @State private var selecciProvincia = 0
        
    let provincias = ["Álava", "Albacete", "Alicante", "Almería", "Asturias", "Ávila", "Badajoz", "Barcelona", "Burgos", "Cáceres", "Cádiz", "Cantabria", "Castellón", "Ceuta", "Ciudad Real", "Córdoba", "Cuenca", "Gerona", "Granada", "Guadalajara", "Guipúzcoa", "Huelva", "Huesca", "Islas Baleares", "Jaén", "La Coruña", "La Rioja", "Las Palmas", "León", "Lérida", "Lugo", "Madrid", "Málaga", "Melilla", "Murcia", "Navarra", "Orense", "Palencia", "Pontevedra", "Salamanca", "Santa Cruz de Tenerife", "Segovia", "Sevilla", "Soria", "Tarragona", "Teruel", "Toledo", "Valencia", "Valladolid", "Vizcaya", "Zamora", "Zaragoza"]


    var body: some View {
        VStack{
            Text("Introducir ubicación")
                .font(.title)
                .bold()
                .padding()
            
            
            /*Picker("Provincia", selection: $selecciProvincia) {
                ForEach(0 ..< provincias.count) { index in
                    Text(self.provincias[index]).tag(index)
                }
            }
            .padding()*/
            
            TextField("Provincia", text: $datos.provincia)
                .bold()
                .padding()
                .background(Color.fondo)
                .cornerRadius(30)
                .padding(.top,150)
                .textInputAutocapitalization(.never)
            
            TextField("Ciudad", text: $datos.ciudad)
                .bold()
                .padding()
                .background(Color.fondo)
                .cornerRadius(30)
                .padding(.top,40)
                .textInputAutocapitalization(.never)
            
            TextField("Código postal", text: $datos.codigoPostal)
                .bold()
                .padding()
                .background(Color.fondo)
                .cornerRadius(30)
                .padding(.top,40)
                .textInputAutocapitalization(.never)
            
            NavigationLink("Siguiente", destination: {
                ViewRegistroFoto(nextView: false)
            })
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
        .environmentObject(FuncionLogin())
}
