//
//  FuncionLogin.swift
//  BookieApp
//
//  Created by dam2 on 18/3/24.
//

import SwiftUI

class FuncionLogin : ObservableObject{
    
    @Published var name: String = ""
    @Published var password: String = ""
    @Published var repassword: String = ""
    @Published var email: String = ""
    
    func check(){
        if password == repassword{
            print("Contraseña igual")
        }else{
            print("Contraseña diferente")
        }
    }
    
    func register(){
        print("Registrado")
    }
    
    

}


