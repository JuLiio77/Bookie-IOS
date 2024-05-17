//
//  ViewChats.swift
//  BookieApp
//
//  Created by dam2 on 18/3/24.
//

import SwiftUI

struct ViewChats: View {
    
    @EnvironmentObject var chats: ModelMensaje
    @State var textoChat: String = ""
    
    var body: some View {
        
        NavigationStack{
            
            List(chats.mensajes, id: \.idChat){ mensaje in

                VistaCeldaChat(message: Mensaje(texto: mensaje.texto, idusuario: mensaje.idusuario, idChat: mensaje.idChat, fechaMensaje: mensaje.fechaMensaje), isSendMensaje: true)
            }
            .padding(0)
            
            HStack{
                TextField("", text: $textoChat)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                Button("", systemImage: "paperplane", action: {
                    chats.sendMensaje(Mensaje(texto: textoChat, idusuario: 2, idChat: 2, fechaMensaje: "fecha"))
                    textoChat = ""
                })
                .padding(.trailing, 10)
            }
                    
        }
    }
}

#Preview {
    ViewChats(textoChat: "")
        .environmentObject(ModelMensaje(mensajes: []))
}
