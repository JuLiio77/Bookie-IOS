//
//  NotificacionesView.swift
//  BookieApp
//
//  Created by dam2 on 18/3/24.
//

import SwiftUI

struct NotificacionesView: View {
    let mensajes = ["Mensaje 1", "Mensaje 2", "Mensaje 3", "Mensaje 4"]
    @State private var seleccionado = 0
    
    
    var body: some View {
        
   
        

        ScrollView {
            
            VStack {
                ForEach(mensajes, id: \.self) { mensaje in
                    NotificacionesCeldaView()
                }
            }
        }
    }
    
}
#Preview {
    NotificacionesView()
}

