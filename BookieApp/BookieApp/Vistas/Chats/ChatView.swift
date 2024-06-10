//
//  ChatView.swift
//  BookieApp
//
//  Created by dam2 on 5/6/24.
//

import SwiftUI

struct ChatView: View {
    @State private var messages: [Message] = []
    @State private var responseIndex: Int = 0
    @State private var nuevoMensaje: String = ""
    let automaticResponses = ["Hola!", "si claro! Cuentame", "lo siento no esta dispinible", "Hasta luego"] //estas son las respuestas automaticas

    
    var body: some View {
        VStack {
            ScrollView {
                         // scrollViewreader permite desplazarse automáticamente al nuevo mensaje
                         ScrollViewReader { scrollView in
                             ForEach(messages) { message in
                                 MessageRow(message: message)
                                     .id(message.id) // asigna un id a cada fila de mensaje
                             }
                             .onChange(of: messages) { _ in
                                 if let lastMessage = messages.last {
                                     withAnimation {
                                         scrollView.scrollTo(lastMessage.id, anchor: .bottom)
                                     }
                                 }
                                 saveMessages(messages) // guardamos los  mensajes en userdefaults cuando cambian
                             }
                         }
                     }
            .background(Color(UIColor.systemGroupedBackground))
            
            HStack {
                TextField("Escribe un mensaje...", text: $nuevoMensaje)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button(action: sendMessage) {
                    Text("Enviar")
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            .padding()
        }
        .onAppear(perform: loadMessages) // cargamos los mensajes al aparecer la vista

    }
    
    
     // esta funcion envia un nuevo mensaje
    func sendMessage() {
        guard !nuevoMensaje.isEmpty else { return }
        let newMessage = Message(mensaje: nuevoMensaje, enviarMensajeUsuario: true)
        messages.append(newMessage)
        nuevoMensaje = ""
        
        // lo que hace esto es que añade una respuesta automatica. las que estan definidas arriba
          DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
              let responseText = self.automaticResponses[self.responseIndex % self.automaticResponses.count]
              let responseMessage = Message(mensaje: responseText, enviarMensajeUsuario: false)
              messages.append(responseMessage)
              responseIndex += 1
          }
      }
    
     
     //  esta funcion carga los mensajes de userdefault
     func loadMessages() {
         if let data = UserDefaults.standard.data(forKey: "messages") {
             if let decodedMessages = try? JSONDecoder().decode([Message].self, from: data) {
                 messages = decodedMessages
             }
         }
     }
     
     // esta funcion guarda los mensajes de userdefault
     func saveMessages(_ messages: [Message]) {
         if let encodedMessages = try? JSONEncoder().encode(messages) {
             UserDefaults.standard.set(encodedMessages, forKey: "messages")
         }
     }
 }


#Preview {
    ChatView()
}
