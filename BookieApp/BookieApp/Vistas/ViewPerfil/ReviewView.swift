//
//  ReviewView.swift
//  BookieApp
//
//  Created by dam2 on 18/3/24.
//

import SwiftUI

struct ReviewView: View {
   
    @State private var reviewText: String = ""

    @State private var rating: Int = 0

    var body: some View {

        NavigationView {

            VStack {
                // Text input field for the review
          TextEditor(text: $reviewText)
                .frame(height: 400)
                .padding()
                .background(Color.color .opacity(0.6))
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

                .padding()

                Button("Continuar"){

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

            }
        }

    }


#Preview {
    ReviewView()
}
