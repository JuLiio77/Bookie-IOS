//
//  VistaCeldaChat.swift
//  BookieApp
//
//  Created by dam2 on 19/3/24.
//

import SwiftUI

struct VistaCeldaChat: View {
    
    @EnvironmentObject var chat: ModelMensaje
    let message1: Message
    
//   @State var message: String = "Lorem ipsum dolor sit amet consectetur sit rhoncus proin viverra aliquet fusce."
    @State var fecha: Date = Date()
    let isSendMessage: Bool

    
    var body: some View {
        HStack {
                  if isSendMessage{
                      Spacer()
                  }
                  
                  VStack(alignment: .leading){
                      
                      Text(message1.texto)
                          .padding(.leading, 20)
                          .font(.callout)
                      Text("\(fecha.formatted(date: .omitted, time: .shortened))")
                          .font(.footnote)
                      
                  }
                  .padding(10)
                  .padding(.top, 5)
                  .foregroundStyle(.white)
                  .background(isSendMessage ? Color.button : Color.button.opacity(0.5))
                  .cornerRadius(10.0)
       
                  
                  if !isSendMessage{
                      Spacer()
                  }
                  
              }
              
          }
      }


#Preview {
    VistaCeldaChat(message1: Message(texto: "Hola Pepe, quiero tu libro", idUsuario: 1, idChat: 1, fechaMensaje: ""),
        isSendMessage: true)
        .environmentObject(ModelMensaje(mensajes: []))
}
