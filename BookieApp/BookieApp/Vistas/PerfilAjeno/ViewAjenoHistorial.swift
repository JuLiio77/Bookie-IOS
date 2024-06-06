//
//  ViewAjenoHistorial.swift
//  BookieApp
//
//  Created by dam2 on 10/4/24.
//

import SwiftUI

struct ViewAjenoHistorial: View {
    
    var body: some View {
        
        VStack {
            
            ScrollView(.vertical) {
                
                CeldaAjenoHistorial()
                CeldaAjenoHistorial()
                CeldaAjenoHistorial()
                CeldaAjenoHistorial()
                CeldaAjenoHistorial()
                CeldaAjenoHistorial()
                CeldaAjenoHistorial()
                CeldaAjenoHistorial()
            }
            
            Spacer()
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarHidden(false)
    }
}

#Preview {
    ViewAjenoHistorial()
}
