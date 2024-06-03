//
//  FiltroBotonView.swift
//  BookieApp
//
//  Created by dam2 on 3/6/24.
//

import SwiftUI

struct FiltroBotonView: View {
    
    @Binding var filtro: Filtros?
    @Binding var ispresented: Bool
    
    let filtroKey: String
    
    var body: some View {
        
        VStack {
            
            Button(action: {
                ispresented = true
            }) {
                if let filtro = filtro {
                    Image(filtro.imagen)
                        .resizable()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                } else {
                    Image(systemName: "eye.circle.fill")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .foregroundColor(.black)
                }
            }
            .sheet(isPresented: $ispresented, onDismiss: { ispresented = false
                
                PerfilViewDefaults.shared.guardarfiltroselect(filtro)
            }) {
                FiltrosPerfilView(filtroseleccionad: $filtro)
                    .presentationDetents([.large])
            }
            Text(filtro?.nombre ?? "Filtro")
                .font(.caption)
        }
        .padding(.horizontal, 10)
    }
}

#Preview {
    FiltroBotonView(filtro: .constant(nil), ispresented: .constant(false), filtroKey: "filtro")
}
