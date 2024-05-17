//
//  TerminosUsoView.swift
//  BookieApp
//
//  Created by dam2 on 30/4/24.
//

import SwiftUI

struct TerminosUsoView: View {
    
    var body: some View {
        
        NavigationStack {
            
            ScrollView {
                
                VStack(alignment: .leading, spacing: 18) {
                    
                    Text("Gracias por usar Bookie. Ahora estás en un área muy importante: nuestros términos y condiciones de uso, así como condiciones especiales, política de privacidad, política de cookies, avisos legales y normativa vigente que rigen nuestra relación. No esperamos que te resulte interesante, pero al menos será comprensible, útil, práctico y completo. A medida que la ley se vuelve cada vez más compleja, en Bookie trabajamos duro para garantizar que nuestra comunidad comprenda los términos legales que rigen nuestra relación. Estos términos y condiciones de uso (\"Términos y Condiciones\") rigen su acceso al sitio web, los servicios y las aplicaciones de Bookie (\"Servicios\").")
                    
                    Text("La utilización del Servicio otorga a quien utiliza el Servicio la condición de usuario (en adelante denominado \"Usuario\") e implica la plena aceptación de los presentes términos y condiciones. Si no está de acuerdo con todo o parte de estos términos y condiciones, absténgase de instalar y/o utilizar el Servicio. Al aceptar estos términos y condiciones, usted declara:")

                    
                    Text("Has leído, comprendido y entendido lo que aquí está escrito. Usted asume todas las obligaciones y comprende sus derechos aquí establecidos y de acuerdo con los términos aplicables. Eres mayor de edad y tienes capacidad jurídica suficiente para utilizar este servicio. La aceptación por parte del usuario de estos términos y condiciones es el primer e importante paso para utilizar el servicio.\n Bookie se reserva el derecho de actualizar y/o cambiar los Términos y Condiciones en cualquier momento y por cualquier motivo a su exclusivo criterio. Bookie notificará a los usuarios sobre cualquier cambio material en los Términos y condiciones o los Servicios. Al acceder o utilizar el Servicio después de que Bookie haya notificado al Usuario sobre cualquier cambio o actualización, el Usuario acepta estar sujeto a los términos revisados y modificados. Si el Usuario no está de acuerdo con los términos y condiciones revisados, el Usuario deberá dejar de utilizar el Servicio.")
                }
                .padding(.top, 10)
            }
            .frame(width: 352)
            .multilineTextAlignment(.leading)
            
            .navigationTitle("Términos de uso")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    TerminosUsoView()
}
