//
//  PerfilView.swift
//  BookieApp
//
//  Created by dam2 on 15/3/24.
//

import SwiftUI

struct PerfilView: View {
    var body: some View {
            VStack {
                Text("Julio Vera")
                    .font(.title)
                    .padding()

              
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding()

                
                VStack{
                    Text("Linares")
                        .padding(.horizontal)
                    Text("4,8 ★")
                }
                .padding()

         
                HStack {
                    Image(systemName: "book.circle.fill")
                    Text("Misterio")
                    Spacer()
                    Image(systemName: "book.circle.fill")
                    Text("Aventura")
                    Spacer()
                    Image(systemName: "book.circle.fill")
                    Text("Filosofía")
                }
                .padding()

                Spacer()
            }
            .background(
                LinearGradient(gradient: Gradient(colors: [Color.white, Color.button]), startPoint: .top, endPoint: .bottom)
            )
        }
    }

    struct BookItemView: View {
        let title: String
        let author: String

        var body: some View {
            HStack {
                Image(systemName: "book.fill")
                VStack(alignment: .leading) {
                    Text(title)
                        .font(.headline)
                    Text(author)
                        .font(.subheadline)
                }
            }
        }
    }
#Preview {
    PerfilView()
}
