//
//  VistaHistorial.swift
//  BookieApp
//
//  Created by dam2 on 9/4/24.
//

import SwiftUI

struct VistaHistorial: View {
    
    
    
    
    var body: some View {
        
        VStack{
            
            ScrollView(.vertical){

                CeldaHistorial()
                CeldaHistorial()
                CeldaHistorial()
                CeldaHistorial()
                CeldaHistorial()
                CeldaHistorial()
                CeldaHistorial()
                CeldaHistorial()
                CeldaHistorial()
                
                
            }
                       
            Spacer()
            
           
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarHidden(false)
    }
}


    
#Preview {
    VistaHistorial()
}
