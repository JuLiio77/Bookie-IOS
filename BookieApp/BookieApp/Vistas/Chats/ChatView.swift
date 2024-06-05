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
    @State private var nuevoMensaje: String = ""
    
    var body: some View {
        VStack {
            ScrollView {
                // el srcollreader sirve para desplazarse automaticamente al enviar un nuevo mensaje
                ScrollViewReader { scrollView in
                    ForEach(messages) { message in
                        MessageRow(message: message)
                            .id(message.id)
                    }
                    .onChange(of: messages) { _ in
                        if let ultimoMensaje = messages.last {
                            withAnimation {
                                scrollView.scrollTo(ultimoMensaje.id, anchor: .bottom)
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
