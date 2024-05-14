//
//  VistaCeldaChat.swift
//  BookieApp
//
//  Created by dam2 on 19/3/24.
//

import SwiftUI

struct VistaCeldaChat: View {
    
    @EnvironmentObject var chat: ModelMensaje
    
    @State var message: Mensaje
    @State var fecha: Date = Date()
    let isSendMensaje: Bool
    
    var body: some View {
        
        HStack {
            if isSendMensaje{
                Spacer()
            }
            
            VStack(alignment: .leading){
                
                Text(message.texto)
                    .padding(.leading, 20)
                    .font(.callout)
                Text("\(fecha.formatted(date: .omitted, time: .shortened))")
                    .font(.footnote)
            }
            .padding(10)
            .padding(.top, 5)
            .foregroundStyle(.white)
            .background(isSendMensaje ? Color.button : Color.button.opacity(0.5))
            .cornerRadius(10.0)
            
            if !isSendMensaje{
                Spacer()
            }
            
        }
        
    }
}

#Preview {
    VistaCeldaChat(message: Mensaje(texto: "mensaje de prueba", idusuario: 1, idChat: 1, fechaMensaje: ""), isSendMensaje: true)
        .environmentObject(ModelMensaje(mensajes: []))
}
