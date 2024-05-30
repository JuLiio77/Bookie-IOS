//
//  FiltroView.swift
//  BookieApp
//
//  Created by dam2 on 30/5/24.
//

import SwiftUI

struct FiltroView: View {
    
    @Binding var filtroseleccionado: Filtros?
    
    let nombre: String
    let systemImagen: String
    
    @State private var ispresentedfiltro: Bool = false
    
    var body: some View {
        
        Button(action: {
            
            ispresentedfiltro = true
        }) {
            
            VStack {
                if let filtro = filtroseleccionado {
                    
                    Image(filtro.imagen)
                        .resizable()
                        .frame(width: 40, height: 40)
                    
                } else {
                    
                    Image(systemImagen)
                        .resizable()
                        .frame(width: 40, height: 40)
                    
                }
                
                Text(nombre)
                    .font(.caption)
            }
        }
        .sheet(isPresented: $ispresentedfiltro, onDismiss: {
            ispresentedfiltro = false
        }) {
            
            FiltrosPerfilView(filtroseleccionad: $filtroseleccionado)
                .presentationDetents([.large])
        }
    }
}

#Preview {
    FiltroView(filtroseleccionado: .constant(nil), nombre: "", systemImagen: "")
        .environmentObject(LibrosFavoritos())
}
