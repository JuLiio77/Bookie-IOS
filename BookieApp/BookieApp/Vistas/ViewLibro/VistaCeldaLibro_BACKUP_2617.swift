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
                
<<<<<<< HEAD
                Text("Harry Potter y la piedra filosofal")
=======
                Text("afadf")
>>>>>>> jose
                    .frame(width: 165)
                    //.padding(.trailing, 10)
                    .font(.subheadline)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
            }
            .padding([.top, .bottom], 20)
    }
}

#Preview {
    VistaCeldaLibro()
}
