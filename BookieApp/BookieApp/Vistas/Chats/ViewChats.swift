//
//  ViewChats.swift
//  BookieApp
//
//  Created by dam2 on 18/3/24.
//

import SwiftUI

struct ViewChats: View {
    
    let mensajes = ["Mensaje 1", "Mensaje 2", "Mensaje 3"]
    @State var texto: String
    
    var body: some View {
        
        VStack{
            
            ScrollView(.vertical){

                VistaCeldaChat()
                VistaCeldaChat()
                VistaCeldaChat()
                VistaCeldaChat()
                VistaCeldaChat()
                VistaCeldaChat()
                VistaCeldaChat()
                
            }
                       
            Spacer()
            
            TextField("texto", text: $texto)
                .border(.black, width: 2)
                .padding()
        }
    }
}

#Preview {
    ViewChats(texto: "")
}
