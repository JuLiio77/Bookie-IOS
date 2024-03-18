//
//  NotificacionesCeldaView.swift
//  BookieApp
//
//  Created by dam2 on 18/3/24.
//

import SwiftUI

struct NotificacionesCeldaView: View {
    
    @State var fecha: Date = Date()
    
    var body: some View {
        
        ZStack {
            Image("")
                .frame(width: 360, height: 130)
                .background(Color.button.opacity(0.3))
                .cornerRadius(20)
            
            HStack {
                Text("Lorem ipsum")
                    .frame(width: 125, height: 50)
                    .padding(.trailing, 75)
                    .font(.title3)
                    .bold()
                
                Text("\(fecha.formatted(date: .numeric, time: .omitted))")
                    .padding(.leading, 20)
        
            }
            
            .padding(.bottom, 60)
            
            VStack {
                Text("Lorem ipsum dolor sit amet consectetur sit rhoncus proin viverra aliquet fusce.")
                
               
               
            }
            .frame(width: 345, height: 50)
            .padding(.top, 35)
            .font(.subheadline)
            
            HStack {
                Button(action: {
                    //accion
                }) {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(.red)
                }
                
                Button(action: {
                    //accion
                }) {
                    Image(systemName: "checkmark.circle.fill")
                        .foregroundColor(.green)
                }
            }
            .padding(.leading, 280)
            .padding(.top, 90)
            
        }
        
    }
}

#Preview {
    NotificacionesCeldaView()
}
