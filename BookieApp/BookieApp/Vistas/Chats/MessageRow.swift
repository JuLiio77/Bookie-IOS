//
//  MessageRow.swift
//  BookieApp
//
//  Created by dam2 on 5/6/24.
//

import SwiftUI


struct MessageRow: View {
    let message: Message
    
    var body: some View {
        HStack {
            if message.enviarMensajeUsuario {
                Spacer()
                Text(message.mensaje)
                    .padding()
                    .background(Color.button)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            } else {
                Text(message.mensaje)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                Spacer()
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}
#Preview {
    MessageRow(message: Message(mensaje: "ddd", enviarMensajeUsuario: true))
}
