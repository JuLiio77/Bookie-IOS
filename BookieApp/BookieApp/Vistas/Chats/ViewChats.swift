//
//  ViewChats.swift
//  BookieApp
//
//  Created by dam2 on 18/3/24.
//

import SwiftUI

struct ViewChats: View {
    
    let mensajes = ["Mensaje 1", "Mensaje 2", "Mensaje 3"]
    @State var texto: String
    
    var body: some View {
        
        VStack{
            
            List{
                
                MensajesCeldaView()
                MensajesCeldaView()
                MensajesCeldaView()
            }
                       
            Spacer()
            
            
        }
    }
}

#Preview {
    ViewChats(texto: "")
}
