//
//  PerfilView.swift
//  BookieApp
//
//  Created by dam2 on 18/3/24.
//

import SwiftUI

struct PerfilView: View {
    
    @StateObject var userData = FuncionLogin()
    
    @State private var seleccionado = 0
    @State var isPresented: Bool = false
    
    @State var isPresentedFoto: Bool = false
    @State var imagenseleccionada: Categorias? = PerfilViewDefaults.shared.loadimagenseleccionada()
    
    @State private var filtrouno: Filtros? = PerfilViewDefaults.shared.loadfiltroselect(pos: 0)
    @State private var filtrodos: Filtros? = PerfilViewDefaults.shared.loadfiltroselect(pos: 1)
    @State private var filtrotres: Filtros? = PerfilViewDefaults.shared.loadfiltroselect(pos: 2)
    
    @State var isPresentedfiltro: Bool = false
    @State var isPresentedfiltrodos: Bool = false
    @State var isPresentedfiltrotres: Bool = false
    
    
    var body: some View {
        
        NavigationStack {
            
            Button(action: {
                //accion
            }) {
                Button(action: {
                    isPresented = true
                }) {
                    Image(systemName: "gearshape")
                        .foregroundColor(.black)
                    
                }
            }
            .sheet(isPresented: $isPresented, onDismiss: {isPresented = false}, content: {
                AjustesPerfil(isPresented: $isPresented)
                    .presentationDetents([.large])
            })
            
            .padding(.leading, 320)
            .font(.headline)
            
            VStack {
                
                HStack {
                    
                    Button(action: {
                        isPresentedFoto = true
                    }) {
                        if let imagen = imagenseleccionada {
                            Image(imagen.imagen)
                                .resizable()
                                .frame(width: 120, height: 120)
                                .clipShape(Circle())
                        } else {
                            Image(systemName: "person.circle.fill")
                                .resizable()
                                .frame(width: 120, height: 120)
                                .foregroundColor(.black)
                        }
                    }
                    .sheet(isPresented: $isPresentedFoto, onDismiss: { isPresentedFoto = false
                        
                        //guardar imagen selecc en userdefaults
                        PerfilViewDefaults.shared.guardarimagenseleccionada(imagenseleccionada)
                      
                    }) {
                        FiltroFotoPerfilView(imagenseleccionada: $imagenseleccionada)
                            .presentationDetents([.large])
                    }
                    
                    VStack(alignment: .leading) {
                        //Text("\(userData.ciudad)")
                        
                        Text("Ciudad")
                            .padding(.leading, 10)
                        
                        Text("4,8 ★")
                            .padding(.leading, 10)
                        
                        Text("Bookies favoritas")
                            .padding(.leading, 10)
                    }
                }
                .padding(.trailing, 70)
                
                
                HStack {
                    
                    FiltroBotonView(filtro: $filtrouno, ispresented: $isPresentedfiltro, filtroKey: "filtrouno", pos: 0)
                    
                    FiltroBotonView(filtro: $filtrodos, ispresented: $isPresentedfiltrodos, filtroKey: "filtrodos", pos: 1)

                    FiltroBotonView(filtro: $filtrotres, ispresented: $isPresentedfiltrotres, filtroKey: "filtrotres", pos: 2)
                }
                .padding(.leading, 100)
                
                VStack {
                    Picker("", selection: $seleccionado) {
                        Text("Mis libros").tag(0)
                        Text("Reseñas").tag(1)
                        Text("Historial").tag(2)
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding()
                    
                    Spacer()
                    
                    if seleccionado == 0 {
                        ViewMisLibros()
                    } else if seleccionado == 1 {
                        ViewReview()
                    } else if seleccionado == 2 {
                        ViewHistorial()
                        
                    }
                    
                    Spacer()
                }
                
                Spacer()
                
                    .navigationTitle("\(userData.name)")
                    .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

#Preview {
    PerfilView()
        .environmentObject(LibrosFavoritos())
    
}
