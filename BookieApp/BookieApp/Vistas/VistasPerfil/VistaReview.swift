//
//  VistaReview.swift
//  BookieApp
//
//  Created by dam2 on 9/4/24.
//

import SwiftUI

struct VistaReview: View {
    
    //  let mensajes = ["Mensaje 1", "Mensaje 2", "Mensaje 3"]
 
      
      var body: some View {
          
          VStack{
              
              ScrollView(.vertical){

                  CeldaReview()
                  CeldaReview()
                  CeldaReview()
                  CeldaReview()
                  CeldaReview()
                  CeldaReview()
                  CeldaReview()
                  CeldaReview()
                  CeldaReview()
                  
                  
              }
                         
              Spacer()
              
             
          }
          .navigationBarTitleDisplayMode(.inline)
          .navigationBarHidden(false)
      }
  }


#Preview {
    VistaReview()
}
