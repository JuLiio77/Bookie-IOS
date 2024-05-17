//
//  VistaCeldaChat.swift
//  BookieApp
//
//  Created by dam2 on 19/3/24.
//

import SwiftUI

struct VistaCeldaChat: View {
    
    @State var message: String = "Lorem ipsum dolor sit amet consectetur sit rhoncus proin viverra aliquet fusce."
    @State var fecha: Date = Date()
    
    var body: some View {
        
        ZStack {
                
                Image("")
                    .frame(width: 360, height: 130)
                    .background(Color.button.opacity(0.3))
                    .cornerRadius(20)

                VStack {
                    Text(message)
                        .padding([.leading ,.trailing], 20)
                        .lineLimit(2, reservesSpace: false)
                    
                    Text("\(fecha.formatted(date: .omitted, time: .shortened))")
                    .padding(.trailing, 290)
                    .padding(.top, 20)
                    
                }
                .frame(width: 345, height: 50)
                .padding(.top, 35)
                .font(.subheadline)
            
            
        }
        
    }
}

#Preview {
    VistaCeldaChat()
}
