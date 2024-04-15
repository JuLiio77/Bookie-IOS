//
//  CeldaAjenoLibros.swift
//  BookieApp
//
//  Created by dam2 on 10/4/24.
//

import SwiftUI

struct CeldaAjenoLibros: View {
    var body: some View {
        VStack{
            
            Image(systemName: "")
                .frame(width: 166, height: 196)
                .foregroundColor(.blue)
                .background(Color.gray, in: .rect)
                .cornerRadius(20)
            
            Text("Harry Potter ")
                .padding(.trailing, 10)
                .font(.subheadline)
                .foregroundColor(.black)
        }
        .padding([.top, .bottom], 20)
    
    }
}


#Preview {
    CeldaAjenoLibros()
}
