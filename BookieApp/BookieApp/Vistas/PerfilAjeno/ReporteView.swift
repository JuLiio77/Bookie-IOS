//
//  ReporteView.swift
//  BookieApp
//
//  Created by dam2 on 17/4/24.
//

import SwiftUI

struct ReporteView: View {
    @State var reporte = ""
    @State private var reviewText: String = ""
    @State private var rating: Int = 0
    @State private var alert = false
    
    var body: some View {
        NavigationView {
            ScrollView{
                VStack {
                    
                    Label("Provincia", systemImage: "")
                        .labelStyle(.titleOnly)
                        .padding(.top, 20)
                        .padding(.trailing, 280)
                    TextField("Provincia", text: $reporte)
                        .bold()
                        .padding()
                        .background(Color.color)
                        .cornerRadius(30)
                    
                    
                    Label("Otro (describe el motivo)", systemImage: "")
                        .labelStyle(.titleOnly)
                        .padding(.top, 20)
                        .padding(.trailing, 160)
                    
                    TextEditor(text: $reviewText)
                        .frame(height: 400)
                        .padding()
                        .background(Color.color)
                        .cornerRadius(20)
                        .scrollContentBackground(.hidden)
                    
                    
                    
                    Button("Continuar") {
                        self.alert = true
                    }
                    .alert(isPresented: $alert) {
                        Alert(
                            title: Text("¿Quieres enviar este reporte?"),
                            primaryButton: .destructive(Text("Sí")) {
                                
                            },
                            secondaryButton: .cancel()
                        )
                    }                    .padding(20)
                        .padding(.horizontal, 50)
                        .background(Color.button)
                        .foregroundColor(.white)
                        .cornerRadius(20)
                        .padding([.leading, .trailing], 10)
                        .padding(.top, 75)
                    
                }
                
                .padding()
                .navigationTitle("Describe tu reporte")
                .navigationBarTitleDisplayMode(.inline)

            }
        }
        
    }
}

#Preview {
    ReporteView()
}
