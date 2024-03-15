//
//  ViewFiltros.swift
//  BookieApp
//
//  Created by dam2 on 14/3/24.
//

import SwiftUI

struct ViewFiltros: View {
    var body: some View {
        
        VStack{
            
            Circle()
                .foregroundStyle(.gray)
                .opacity(0.3)
                .frame(width: 40)
            Text("romance")
                .font(.caption)
        }
    }
}

#Preview {
    ViewFiltros()
}
