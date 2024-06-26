//
//  CeldaReview.swift
//  BookieApp
//
//  Created by dam2 on 23/4/24.
//

import SwiftUI

struct CeldaReview: View {
    
    @State var fecha: Date = Date()
    
    var body: some View {
        
        ZStack {
            Image("")
                .frame(width: 360, height: 130)
                .background(Color.button.opacity(0.3))
                .cornerRadius(20)
            
            HStack {
                Text("Javier")
                    .frame(width: 125, height: 50)
                    .padding(.trailing, 75)
                    .font(.title3)
                    .bold()
                
                Text("\(fecha.formatted(date: .numeric, time: .omitted))")
                    .padding(.leading, 20)
                
            }
            
            .padding(.bottom, 60)
            
            VStack {
                Text("Una persona agardable y da gusto intercamboar libros con ella")
                
                
                
            }
            .frame(width: 345, height: 50)
            .padding(.top, 35)
            .font(.subheadline)
            
            HStack {
                Text("4,8")
                    .bold()
                
                Button(action: {
                    //accion
                }) {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                }
            }
            .padding(.leading, 280)
            .padding(.top, 90)
            
        }
    }
}
#Preview {
    CeldaReview()
}
