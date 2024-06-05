//
//  ViewChats.swift
//  BookieApp
//
//  Created by dam2 on 18/3/24.
//

import SwiftUI

struct ViewChats: View {
    
    @State var texto: String

    let mensajes = ["Mensaje 1", "Mensaje 2", "Mensaje 3"]
    
    var body: some View {
        
        VStack{
            
            ScrollView(.vertical) {

                VistaCeldaChat()
                VistaCeldaChat()
                VistaCeldaChat()
                VistaCeldaChat()
                VistaCeldaChat()
                VistaCeldaChat()
                VistaCeldaChat()                
            }
                       
            Spacer()
            
            HStack {
                
                TextField("texto", text: $texto)
                    .frame(width: 300, height: 20)
                    //.border(.blue, width: 1)
                    .cornerRadius(5)
                
                Button("", systemImage: "paperplane", action: {})                
            }
        }
    }
}

#Preview {
    ViewChats(texto: "")
}
