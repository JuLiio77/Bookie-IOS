//
//  CeldaMisLibros.swift
//  BookieApp
//
//  Created by dam2 on 9/4/24.
//

import SwiftUI

struct CeldaMisLibros: View {
    var body: some View {
        VStack{
            
            Image(systemName: "")
                .frame(width: 166, height: 196)
                .foregroundColor(.blue)
                .background(Color.gray, in: .rect)
                .cornerRadius(20)
            
            Text("Harry Potter y la piedra filosofal")
                .padding(.trailing, 10)
                .font(.subheadline)
                .foregroundColor(.black)
            //.multilineTextAlignment(.trailing)
        }
        .padding([.top, .bottom], 20)
    
    }
}


#Preview {
    CeldaMisLibros()
}
