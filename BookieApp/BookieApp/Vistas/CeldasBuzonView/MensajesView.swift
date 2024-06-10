//
//  MensajesView.swift
//  BookieApp
//
//  Created by dam2 on 18/3/24.
//

import SwiftUI

struct MensajesView: View {
<<<<<<< HEAD
    
    let mensajes = ["Mensaje 1", "Mensaje 2", "Mensaje 3", "Mensaje 4"]
=======
    let mensajes = ["Mensaje 1"]

>>>>>>> julio
    
    var body: some View {
        
        ScrollView {
            
            VStack {
                
                ForEach(mensajes, id: \.self) { mensaje in
                    MensajesCeldaView()
                        .padding(.bottom, 8)
                }
            }
        }
    }
}

#Preview {
    MensajesView()
}
