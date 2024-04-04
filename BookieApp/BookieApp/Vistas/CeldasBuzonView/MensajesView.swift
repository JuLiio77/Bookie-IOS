//
//  MensajesView.swift
//  BookieApp
//
//  Created by dam2 on 18/3/24.
//

import SwiftUI

struct MensajesView: View {
    
    @State private var mensajes = ["Mensaje 1", "Mensaje 2", "Mensaje 3"]
    @State private var mensajeSeleccionado: String?

    var body: some View {
        ScrollView {
            VStack {
                ForEach(mensajes, id: \.self) { mensaje in
                    NavigationLink(destination: ViewChats(texto: mensaje)) {
                        MensajesCeldaView()
                    }
                }
            }
        }
    }
}

#Preview {
    MensajesView()
}
