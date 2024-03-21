//
//  CeldaHistorial.swift
//  BookieApp
//
//  Created by dam2 on 21/3/24.
//

import SwiftUI

struct CeldaHistorial: View {
    
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
                    .padding(.leading, 10)
                    .padding(.top, 60)
                
                    Text("Lorem ipsum")
                        .frame(width: 125, height: 50)
                        .padding(.trailing, 40)
                        .padding(.top, 35)
                        .font(.title3)
                        .bold()
                    
                    Text("\(fecha.formatted(date: .numeric, time: .omitted))")
                        .padding(.leading, 20)
                        .font(.caption)
                    
            }
            .padding(.bottom, 60)
            
            VStack {
                Text("Ha recibido el libro x de user x")
            }
            .frame(width: 240, height: 50)
            .padding(.top, 40)
            .font(.subheadline)
            .padding(.leading, 35)
        }
    }
}

#Preview {
    CeldaHistorial()
}
