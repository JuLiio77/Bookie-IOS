//
//  FuncionLogin.swift
//  BookieApp
//
//  Created by dam2 on 18/3/24.
//

import SwiftUI

class FuncionLogin: ObservableObject{

    static let sharec = FuncionLogin()
    
    @Published var name: String = UserDefaults.standard.string(forKey: "username") ?? ""
    @Published var password: String = UserDefaults.standard.string(forKey: "password") ?? ""
    @Published var repassword: String = UserDefaults.standard.string(forKey: "rePassword") ?? ""
    @Published var recordarConta: Bool = UserDefaults.standard.bool(forKey: "toogle")
    @Published var token: String = UserDefaults.standard.string(forKey: "token") ?? ""
    @Published var email: String = ""
    
    
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
    
    init(){
        
    }
}


