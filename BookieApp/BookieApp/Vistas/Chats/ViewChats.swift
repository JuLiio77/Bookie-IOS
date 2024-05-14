//
//  ViewChats.swift
//  BookieApp
//
//  Created by dam2 on 18/3/24.
//

import SwiftUI

struct ViewChats: View {
    
    @EnvironmentObject var chats: ModelMensaje
//    @ObservedObject var datoChat: ModelMensaje
    @State var textoChat: String
    
    var body: some View {
        
        NavigationStack{
            
            List(chats.mensajes, id: \.idChat){ mensaje in

                VistaCeldaChat( message1: Message(texto: mensaje.texto, idUsuario: mensaje.idUsuario, idChat: mensaje.idChat, fechaMensaje: mensaje.fechaMensaje), isSendMessage: true)
        
                
            }
                  
            HStack{
                TextField("", text: $textoChat)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                Button("", systemImage: "paperplane", action: {
                    chats.sendMensaje(Message(texto: textoChat, idUsuario: 1, idChat: 1, fechaMensaje: "fecha"))
                    textoChat = ""
                })
                
            }
        }
    }
}

#Preview {
    ViewChats( textoChat: "")
        .environmentObject(ModelMensaje(mensajes: []))
}//datoChat: ModelMensaje(mensajes: []),
