//
//  ViewReview.swift
//  BookieApp
//
//  Created by dam2 on 23/4/24.
//

import SwiftUI

struct ViewReview: View {
    var body: some View {
        VStack{
            
            ScrollView(.vertical){
                
                CeldaReview()
              
            }
            
            Spacer()
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarHidden(false)
    }
}

#Preview {
    ViewReview()
}
