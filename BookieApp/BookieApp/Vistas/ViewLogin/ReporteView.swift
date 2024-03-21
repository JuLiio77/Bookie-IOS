//
//  ReporteView.swift
//  BookieApp
//
//  Created by dam2 on 21/3/24.
//

import SwiftUI

struct ReporteView: View {
    
    @State private var selectedProvinceIndex = 0
    @State private var provinceName = ""
    @State private var reviewText = ""
    
    let reportTitles = [
        "Artículo inapropiado", "Comportamiento sospechoso", "Contenido ofensivo o inapropiado", "Información falsa", "Spam", "Comunicación inapropiada" ]
    var body: some View {
        HStack{ 
            NavigationStack{
                ScrollView{
                    
                    Label("Motivo", systemImage: "")
                        .labelStyle(.titleOnly)
                        .padding(.top, 50)
                        .padding(.trailing, 280)
                    
                    
                    Picker(selection: $selectedProvinceIndex, label: Text("Provincia")) {
                        ForEach(0..<reportTitles.count) { index in
                            Text(self.reportTitles[index]).tag(index)
                        }
                    }
                    .frame(width: 322, height: 20)
                    .bold()
                    .padding()
                    .background(Color.color)
                    .cornerRadius(30)
                    .tint(.black)
                    
                    Text("Otro")
                        .labelStyle(.titleOnly)
                        .padding(.top, 40)
                        .padding(.trailing, 280)
                    
                    
                    TextEditor(text: $reviewText)
                        .frame(height: 280)
                        .padding()
                        .background(Color.color)
                        .cornerRadius(20)
                        .scrollContentBackground(.hidden)
                    
                    
                    Button("Siguiente"){
                        
                    }
                    .padding(20)
                    .padding(.horizontal, 30)
                    .background(Color.button)
                    .foregroundColor(.white)
                    .cornerRadius(20)
                    .padding([.leading, .trailing], 10)
                    .padding(.top, 75)
                    
                    Spacer()
                    
                        .navigationTitle("Describe tu reporte")
                        .navigationBarTitleDisplayMode(.inline)
                    
                }
            }
            .padding()
        }

    }
    
}

#Preview {
    ReporteView()
}
