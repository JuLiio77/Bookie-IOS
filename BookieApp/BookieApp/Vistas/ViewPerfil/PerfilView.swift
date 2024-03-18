//
//  PerfilView.swift
//  BookieApp
//
//  Created by dam2 on 18/3/24.
//

import SwiftUI

struct PerfilView: View {

    @State private var seleccionado = 0
    
    var body: some View {
        
        NavigationStack {
            
            
            HStack {
                
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 120, height: 120)
                
                
                VStack(alignment: .leading) {
                    Text("Linares")
                    
                    Text("4,8 ★")
                    
                    Text("Bookies favoritas")
                }
            }
            .padding(.trailing, 70)
            
            HStack {
                
                VStack {
                    Image(systemName: "book.circle.fill")
                    //.frame(width: 50, height: 50)
                    Text("Misterio")
                }
                .padding(.horizontal, 10)
                
                
                VStack {
                    Image(systemName: "book.circle.fill")
                    Text("Misterio")
                }
                
                .padding(.horizontal, 10)
                
                VStack {
                    Image(systemName: "book.circle.fill")
                    Text("Misterio")
                }
                
                .padding(.horizontal, 10)
                
            }
            .padding(.leading, 100)
            
            VStack {
                Picker("", selection: $seleccionado) {
                    Text("Imágenes").tag(0)
                    Text("Reels").tag(1)
                    Text("fsdfsdf").tag(2)
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding()
                
                Spacer()
                
                if seleccionado == 0 {
                    Text("Vista de Imágenes")
                } else if seleccionado == 1 {
                    Text("Vista de Reels")
                } else if seleccionado == 2 {
                    Text("Vista de fdfdsfs")
                    
                }
                
                Spacer()
            }
            
            
            Spacer()
            
            
            
                .navigationTitle("Julio Vera")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    Button(action: {
                        //accion
                    }) {
                        Image(systemName: "ellipsis")
                    }
                    .rotationEffect(.degrees(90))
                    .foregroundColor(Color.black)
                    
                }
        }
    }

}

#Preview {
    PerfilView()
}
