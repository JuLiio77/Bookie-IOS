//
//  VistaCeldaLibro.swift
//  BookieApp
//
//  Created by dam2 on 11/3/24.
//

import SwiftUI

struct VistaCeldaLibro: View {
    var body: some View {

            VStack{
                
                Image(systemName: "globe")
                    .frame(width: 166, height: 196)
                    .foregroundColor(.blue)
                    .background(Color.gray, in: .rect)
                    .cornerRadius(20)
                
                Text("Harry Potter y la piedra filosofal")
                    .padding(.trailing, 10)
                    .font(.subheadline)
                //.multilineTextAlignment(.trailing)
            }
            .padding([.top, .bottom], 20)
        
        
    }
    
}

#Preview {
    VistaCeldaLibro()
}
