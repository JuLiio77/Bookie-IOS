//
//  CeldaReseña.swift
//  BookieApp
//
//  Created by dam2 on 21/3/24.
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
                
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .padding(.trailing, 10)
                    .padding(.top, 40)
                
                    Text("Lorem ipsum")
                      
                        .padding(.top, 5)
                        .font(.title3)
                        .bold()
                        .frame(width: 125, height: 50)
                        .padding(.trailing, 50)
                    
                    Text("\(fecha.formatted(date: .numeric, time: .omitted))")
                        .padding(.leading, 20)
                        .font(.caption)
                    
            }
            .padding(.bottom, 60)
            
            VStack {
                Text("Lorem ipsum dolor sit amet consectetur sit rhoncus proin viverra aliquet fusce.")
            }
            .frame(width: 240, height: 50)
            .padding(.top, 20)
            .font(.subheadline)
            .padding(.leading, 50)
            
            HStack {
                Text("4.8")
                
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                        
                
            }
            .padding(.leading, 280)
            .padding(.top, 90)
        }
    }
}

#Preview {
    CeldaReview()
}
