//
//  SheetFiltosView.swift
//  BookieApp
//
//  Created by dam2 on 1/4/24.
//

import SwiftUI

struct SheetFiltosView: View {
    
    @Binding var isPresented: Bool

    
    let device = DeviceRepository.all
    
    let elementos = 1...1002
    let columnas = [
        GridItem(.flexible(minimum: 70, maximum: 80),spacing: 20 ),
        GridItem(.flexible(minimum: 70, maximum: 80),spacing: 20 ),
        GridItem(.flexible(minimum: 70, maximum: 80),spacing: 20 ),


    ]
    var body: some View {
        NavigationView{
           
                LazyVGrid(columns: columnas, spacing: 30){
                    ForEach(device, content: Celda.init)
                        
                    
                }
                .padding(50)
                .navigationTitle("")
            
        }
    }
}

#Preview {
    SheetFiltosView(isPresented: .constant(true))
}



        
