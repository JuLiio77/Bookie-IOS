//
//  FuncionLogin.swift
//  BookieApp
//
//  Created by dam2 on 18/3/24.
//

import SwiftUI

class FuncionLogin: ObservableObject{
    
    @Published var name: String = ""
    @Published var password: String = ""
    @Published var repassword: String = ""
    @Published var email: String = ""
    
    
<<<<<<< HEAD:BookieApp/BookieApp/Vistas/FuncionLogin.swift

=======
    func check(){
        
        if password == repassword{
            print("contraseña igual")
        }else{
            print("contraseña diferente")
        }
        
    }
    
    func register(){
        
     print("registrado")
    }
>>>>>>> jose:BookieApp/BookieApp/Vistas/ViewLogin/FuncionLogin.swift
}


