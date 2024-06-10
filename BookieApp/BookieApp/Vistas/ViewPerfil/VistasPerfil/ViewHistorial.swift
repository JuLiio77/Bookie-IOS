//
//  ViewHistorial.swift
//  BookieApp
//
//  Created by dam2 on 23/4/24.
//

import SwiftUI

struct ViewHistorial: View {
 

        var body: some View {
            
            VStack{
                
                ScrollView(.vertical){

                    CeldaHistorial()
               
                    
                    
                }
                           
                Spacer()
                
               
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(false)
        }
    }


#Preview {
    ViewHistorial()
}
