//
//  ChatView.swift
//  BookieApp
//
//  Created by dam2 on 5/6/24.
//

import SwiftUI

struct ChatView: View {
    @State private var messages: [Message] = [
//        Message(mensaje: "Hola", enviarMensajeUsuario: false),
//        Message(mensaje: "Adios", enviarMensajeUsuario: true)
    ]
    @State private var responseIndex: Int = 0 // Índice para rastrear la respuesta automática

    @State private var nuevoMensaje: String = ""
    let automaticResponses = ["Hola!", "si claro! Cuentame", "lo siento no esta dispinible", "Hasta luego"] // Respuestas automáticas

    
    var body: some View {
        VStack {
            ScrollView {
                         // ScrollViewReader permite desplazarse automáticamente al nuevo mensaje
                         ScrollViewReader { scrollView in
                             ForEach(messages) { message in
                                 MessageRow(message: message)
                                     .id(message.id) // Asigna un ID a cada fila de mensaje
                             }
                             .onChange(of: messages) { _ in
                                 // Desplazarse automáticamente al último mensaje cuando cambia la lista de mensajes
                                 if let lastMessage = messages.last {
                                     withAnimation {
                                         scrollView.scrollTo(lastMessage.id, anchor: .bottom)
                                     }
                                 }
                                 saveMessages(messages) // Guardar mensajes en UserDefaults cuando cambian
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
        .onAppear(perform: loadMessages) // Cargar mensajes al aparecer la vista

    }
    
    
     // Función para enviar un nuevo mensaje
    func sendMessage() {
        guard !nuevoMensaje.isEmpty else { return } // Verifica que el mensaje no esté vacío
        let newMessage = Message(mensaje: nuevoMensaje, enviarMensajeUsuario: true)
        messages.append(newMessage) // Añade el nuevo mensaje a la lista
        nuevoMensaje = "" // Limpia el campo de texto
        
        // Añadir una respuesta automática después de un pequeño retraso
          DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
              let responseText = self.automaticResponses[self.responseIndex % self.automaticResponses.count]
              let responseMessage = Message(mensaje: responseText, enviarMensajeUsuario: false)
              messages.append(responseMessage)
              responseIndex += 1 // Incrementar el índice para la próxima respuesta automática
          }
      }
    
     
     // Función para cargar los mensajes desde UserDefaults
     func loadMessages() {
         if let data = UserDefaults.standard.data(forKey: "messages") {
             if let decodedMessages = try? JSONDecoder().decode([Message].self, from: data) {
                 messages = decodedMessages
             }
         }
     }
     
     // Función para guardar los mensajes en UserDefaults
     func saveMessages(_ messages: [Message]) {
         if let encodedMessages = try? JSONEncoder().encode(messages) {
             UserDefaults.standard.set(encodedMessages, forKey: "messages")
         }
     }
 }


#Preview {
    ChatView()
}
