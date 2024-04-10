//
//  ViewAjenoReview.swift
//  BookieApp
//
//  Created by dam2 on 10/4/24.
//

import SwiftUI

struct ViewAjenoReview: View {
    
      
      var body: some View {
          NavigationStack{
              VStack{
                  
                  ScrollView(.vertical){
                      
                      CeldaAjenoReview()
                      CeldaAjenoReview()
                      CeldaAjenoReview()
                      CeldaAjenoReview()
                      CeldaAjenoReview()
                      
                      
                  NavigationLink("Escribir Reseña", destination: ReviewView())
                      .padding(20)
                      .padding(.horizontal, 30)
                      .background(Color.button)
                      .foregroundColor(.black)
                      .cornerRadius(20)
                      .padding([.leading, .trailing], 10)
                      .padding(.top, 25)
                         
                      
                  }
              }
              
                         
              Spacer()
              
             
          }
          .navigationBarTitleDisplayMode(.inline)
          .navigationBarHidden(false)
      }
  }


#Preview {
    ViewAjenoReview()
}
