//
//  ReviewView.swift
//  BookieApp
//
//  Created by dam2 on 18/3/24.
//

import SwiftUI

struct ReviewView: View {
    
    @State private var reviewtext: String = ""
    
    @State private var rating: Int = 0
    @State var mostraralerta = false
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                TextEditor(text: $reviewtext)
                    .frame(height: 400)
                    .padding()
<<<<<<< HEAD
<<<<<<< HEAD
                    .background(Color.button.opacity(0.6))
=======
                    .background(Color.color1 .opacity(0.6))
>>>>>>> julio
=======
                    .background(Color.color .opacity(0.6))
>>>>>>> letizia
                    .cornerRadius(20)
                    .scrollContentBackground(.hidden)
                
                Spacer()
                
                HStack {
                    
                    ForEach(1...5, id: \.self) { index in
                        
                        Image(systemName: index <= rating ? "star.fill" : "star")
                            .foregroundColor(.yellow)
                            .onTapGesture {
                                rating = index
                            }
                    }
                }
                
                Button("Continuar") {
                    self.mostraralerta = true
                }
                .alert(isPresented: $mostraralerta) {
                    
                    Alert(
                        title: Text("Quieres publicar la reseña"),
                        primaryButton: .destructive(Text("Sí")) {
                            //gregar el código para cerrar la vista y volver a la anterior
                        },
                        secondaryButton: .cancel()
                    )
                }
                .padding(20)
                .padding(.horizontal, 50)
                .background(Color.button)
                .foregroundColor(.white)
                .cornerRadius(20)
                .padding([.leading, .trailing], 10)
                .padding(.top, 75)
            }
            .padding()
            .navigationTitle("Escribe tu reseña")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ReviewView()
}
