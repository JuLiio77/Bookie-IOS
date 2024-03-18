//
//  BibliotecaView.swift
//  BookieApp
//
//  Created by dam2 on 14/3/24.
//

import SwiftUI

struct BibliotecaView: View {
    
    let mensajes = ["Mensaje 1", "Mensaje 2", "Mensaje 3"]

    var body: some View {

        VStack {
            ForEach(mensajes, id: \.self) { mensaje in
                CeldaBibloteca()
            }
        }

    }
}

#Preview {
    BibliotecaView()
}
