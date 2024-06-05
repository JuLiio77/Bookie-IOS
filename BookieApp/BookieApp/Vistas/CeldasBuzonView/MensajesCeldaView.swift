//
//  MensajesCeldaView.swift
//  BookieApp
//
//  Created by dam2 on 18/3/24.
//

import SwiftUI

struct MensajesCeldaView: View {
    
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
                    .frame(width: 35, height: 35)
                    .padding(.trailing, 15)
                
                Text("Lorem ipsum")
                    .frame(width: 125, height: 50)
                    .padding(.trailing, 45)
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
        }
    }
}

#Preview {
    MensajesCeldaView()
}
