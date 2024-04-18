//
//  MensajesView.swift
//  BookieApp
//
//  Created by dam2 on 18/3/24.
//

import SwiftUI

struct MensajesView: View {
    let mensajes = ["Mensaje 1", "Mensaje 2", "Mensaje 3", "Mensaje 4"]

    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(mensajes, id: \.self) { mensaje in
                    MensajesCeldaView()
                }
            }
        }
    }
}

#Preview {
    MensajesView()
}
