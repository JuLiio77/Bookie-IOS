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

                    CeldaHIstorial()
                    CeldaHIstorial()
                    CeldaHIstorial()
                    CeldaHIstorial()
                    CeldaHIstorial()
                    CeldaHIstorial()
                    CeldaHIstorial()
                    CeldaHIstorial()
                    CeldaHIstorial()
             
                    
                    
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
