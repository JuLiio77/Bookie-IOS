//
//  MainViewBuzon.swift
//  BookieApp
//
//  Created by dam2 on 18/3/24.
//

import SwiftUI

struct MainViewBuzon: View {
    @State private var seleccionado = 0

    var body: some View {
        
        VStack {
            
           Picker("", selection: $seleccionado) {
               Text("Mensajes").tag(0)
               Text("Notificaciones").tag(1)
               Text("Chat").tag(2)
           }
           .pickerStyle(SegmentedPickerStyle())
           .padding()

           Spacer()

           if seleccionado == 0 {
               MensajesView()
           } else if seleccionado == 1 {
               NotificacionesView()
           } else if seleccionado == 2 {
               ChatView()
           }

           Spacer()
       }
    }
}

#Preview {
    MainViewBuzon()
}
