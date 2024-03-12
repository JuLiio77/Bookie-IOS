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
                .frame(width: 150, height: 150)
                .foregroundColor(.blue)
                .background(Color.gray, in: .rect)
            
            Text("nombre del libro")
        }
    }
}

#Preview {
    VistaCeldaLibro()
}
