//
//  SubirLibroView.swift
//  BookieApp
//
//  Created by dam2 on 19/3/24.
//

import SwiftUI
import PhotosUI

struct SubirLibroView: View {
    
<<<<<<< HEAD
=======
    @ObservedObject var userData: FuncionLogin
    var peticiones = Peticiones()
    @ObservedObject private var idUser = ModelUser()
    
>>>>>>> jose
    @State private var titulo = ""
    @State private var autor = ""
    @State private var numeroPaginas = ""
    @State private var sinopsis = ""
    @State private var editorial = ""
    @State private var genero = ""
    @State private var showingAlert = false
    @State private var alertMessage = ""
    
    @State private var mostrarSheet = false
    @State private var categoriaseleccionada = [Categorias]()
    
    @State private var mostraralertaelim = false
    @State private var eliminarcateg: Categorias?
    
    @State private var seleccionarimg: UIImage? = nil
    @State private var isimgpickerselecct = false
    
    var body: some View {
        
        NavigationStack {
            
            ScrollView{
                
                Button(action: {
                    isimgpickerselecct.toggle()
                }) {
                    if let image = seleccionarimg {
                        
                        Image(uiImage: image)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 205, height: 250)
                            .cornerRadius(20)
                            .padding(.top, 25)
                        
                    } else {
                        
                        Image(systemName: "photo")
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 205, height: 250)
                            .foregroundColor(.black)
                            .background(Color.gray, in: .rect)
                            .cornerRadius(20)
                            .padding(.top, 25)
                    }
                }
                .sheet(isPresented: $isimgpickerselecct) {
                    ImagePicker(selectedimage: $seleccionarimg)
                }
                
                Divider()
                    .padding(.top, 35)
                
                Label("Título", systemImage: "")
                    .labelStyle(.titleOnly)
                    .padding(.top, 40)
                    .padding(.trailing, 280)
                
                TextField("Título", text: $titulo)
                    .bold()
                    .padding()
                    .background(Color.color)
                    .cornerRadius(30)
                    .padding([.leading, .trailing], 20)
                
                Label("Autor", systemImage: "")
                    .labelStyle(.titleOnly)
                    .padding(.top, 30)
                    .padding(.trailing, 280)
                
                TextField("Autor", text: $autor)
                    .bold()
                    .padding()
                    .background(Color.color)
                    .cornerRadius(30)
                    .padding([.leading, .trailing], 20)
                
                
                Label("Nº de páginas", systemImage: "")
                    .labelStyle(.titleOnly)
                    .padding(.top, 30)
                    .padding(.trailing, 220)
                
                TextField("Nº de páginas", text: $numeroPaginas)
                    .bold()
                    .padding()
                    .background(Color.color)
                    .cornerRadius(30)
                    .padding([.leading, .trailing], 20)
                
                Label("Género", systemImage: "")
                    .labelStyle(.titleOnly)
                    .padding(.top, 30)
                    .padding(.trailing, 280)
                
                TextField("Género", text: $genero)
                    .bold()
                    .padding()
                    .background(Color.color)
                    .cornerRadius(30)
                    .padding([.leading, .trailing], 20)
                
                Label("Editorial", systemImage: "")
                    .labelStyle(.titleOnly)
                    .padding(.top, 30)
                    .padding(.trailing, 280)
                
                TextField("Editorial", text: $editorial)
                    .bold()
                    .padding()
                    .background(Color.color)
                    .cornerRadius(30)
                    .padding([.leading, .trailing], 20)
                
                Label("Sinopsis", systemImage: "")
                    .labelStyle(.titleOnly)
                    .padding(.top, 30)
                    .padding(.trailing, 280)
                
                TextField("Sinopsis", text: $sinopsis)
                    .bold()
                    .padding()
                    .background(Color.color)
                    .cornerRadius(30)
                    .padding([.leading, .trailing], 20)
                
                
                HStack {
                    
                    Label("Agregar filtro", systemImage: "")
                        .labelStyle(.titleOnly)
                    
                    Button(action: {
                        mostrarSheet.toggle()
                    }) {
                        Image(systemName: "plus.app.fill")
                            .foregroundColor(.red)
                    }
                    .sheet(isPresented: $mostrarSheet) {
                        FiltroLibrosView(categoriaseleccionada: $categoriaseleccionada)
                    }
                }
                .padding(.top, 30)
                .padding(.trailing, 200)
                
                Divider()
                    .padding(.top, 15)
                
                VStack {
                    
                    LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 3), spacing: 20) {
                        
                        if !categoriaseleccionada.isEmpty {
                            
                            ForEach(categoriaseleccionada) { categoria in
                                
                                VStack {
                                    
                                    Button(action: {
                                        
                                        eliminarcateg = categoria
                                        mostraralertaelim = true
                                    }) {
                                        
                                        VStack {
                                            
                                            Image(categoria.imagen).resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(width: 60, height: 60)
                                            
                                            Text(categoria.nombre)
                                                .font(.footnote)
                                                .foregroundColor(.black)
                                                .multilineTextAlignment(.center)
                                        }
                                    }
                                    .alert(isPresented: $mostraralertaelim) {
                                        
                                        Alert(title: Text("Eliminar filtro"), message: Text("¿Quieres eliminar el filtro \(eliminarcateg?.nombre ?? "")?"), primaryButton: .destructive(Text("Eliminar")) {
                                            
                                            if let eliminarcateg = eliminarcateg {
                                                categoriaseleccionada.removeAll { $0.id == eliminarcateg.id }
                                            }
                                        },
                                              secondaryButton: .cancel()
                                        )
                                    }
                                }
                            }
                        }
                    }
                }
                .padding(.top, 15)
                
                Button(action: subirLibro) {
                    Text("Subir Libro")
                }
                .padding(.top, 25)
                
                //boton para simular el registro y almacenar el token
                Button(action: {
                    let token = "eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJqdWxpb3BydWViYSIsImlhdCI6MTcxNjIxNzY4MSwiZXhwIjoxNzE2MzA0MDgxfQ.JQ4cuesDK4wetRNywxVCgES9qy6pm9lyJ7IH-NbIdss"
                    UserDefaults.standard.set(token, forKey: "authToken")
                    
                    self.alertMessage = "Token almacenado"
                    self.showingAlert = true
                }) {
                    Text("Guardar Token")
                }
            }
            .navigationBarTitle("Detalles del libro")
            .navigationBarTitleDisplayMode(.inline)
            
            .alert(isPresented: $showingAlert) {
                Alert(title: Text("Resultado"), message: Text(alertMessage), dismissButton: .default(Text("OK")))
            }
        }
    }
    
    func subirLibro() {
        guard let url = URL(string: "http://localhost:8080/api/libro") else {
            self.alertMessage = "URL inválida"
            self.showingAlert = true
            return
        }
        
        guard let paginas = Int(numeroPaginas) else {
            self.alertMessage = "Número de páginas inválido"
            self.showingAlert = true
            return
        }
        
        guard let authToken = UserDefaults.standard.string(forKey: "authToken") else {
            self.alertMessage = "No se encontró el token de autenticación"
            self.showingAlert = true
            return
        }
        
<<<<<<< HEAD
        let libro = Libro(titulo: titulo, autor: autor, numeroPaginas: paginas, sinopsis: sinopsis, editorial: editorial, genero: genero)
=======
        print("Token de autenticación: \(authToken)")
        
        let libro = Libro(libroId: 1, titulo: titulo, autor: autor, numeroPaginas: paginas, sinopsis: sinopsis, editorial: editorial, genero: genero, foto: "", prestado: false, filtro: [1], usuario: idUser, userId: idUser.id)
>>>>>>> jose
        
        guard let jsonData = try? JSONEncoder().encode(libro) else {
            self.alertMessage = "Error codificando datos"
            self.showingAlert = true
            return
        }
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.setValue("Bearer \(authToken)", forHTTPHeaderField: "Authorization")
        request.httpBody = jsonData
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                DispatchQueue.main.async {
                    self.alertMessage = "Error: \(error.localizedDescription)"
                    self.showingAlert = true
                }
                return
            }
            
            guard let httpResponse = response as? HTTPURLResponse else {
                DispatchQueue.main.async {
                    self.alertMessage = "Respuesta no válida del servidor"
                    self.showingAlert = true
                }
                return
            }
            
            if !(200...299).contains(httpResponse.statusCode) {
                DispatchQueue.main.async {
                    self.alertMessage = "Error en el servidor: \(httpResponse.statusCode)"
                    self.showingAlert = true
                }
                return
            }
            
            DispatchQueue.main.async {
                self.alertMessage = "Libro subido con éxito"
                self.showingAlert = true
            }
        }.resume()
    }
}

#Preview {
    SubirLibroView()
}
