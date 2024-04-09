//
//  FuncionLogin.swift
//  BookieApp
//
//  Created by dam2 on 18/3/24.
//

import SwiftUI

class FuncionLogin: ObservableObject{

    static let sharec = FuncionLogin()
    var peticiones = Peticiones()
    
    @Published var name: String = UserDefaults.standard.string(forKey: "username") ?? ""
    @Published var password: String = UserDefaults.standard.string(forKey: "password") ?? ""
    @Published var repassword: String = UserDefaults.standard.string(forKey: "repassword") ?? ""
    @Published var recordarConta: Bool = UserDefaults.standard.bool(forKey: "toogle")
    @Published var token: String = UserDefaults.standard.string(forKey: "token") ?? ""
    @Published var email: String = UserDefaults.standard.string(forKey: "email") ?? ""
    
    
    func check(username: String, password: String){
        
        peticiones.login(username: username, password: password){ result in
                    switch result {
                    case .success(let token):
                        // Aquí manejas el token obtenido después del inicio de sesión
                        print("Token recibido: \(token)")
                    case .failure(let error):
                        // Aquí manejas cualquier error que ocurra durante el inicio de sesión
                        print("Error al iniciar sesión: \(error.localizedDescription)")
                    }
            }
        
    }
    
    func register(){
    
        if name.isEmpty{
            print("el nombre esta vacio")
        }else{
            UserDefaults.standard.setValue(name, forKey: "username")
            UserDefaults.standard.setValue(email, forKey: "email")
            UserDefaults.standard.setValue(password, forKey: "password")
            UserDefaults.standard.setValue(repassword, forKey: "repassword")
        }
    
    }
    
    func mostrarDefault(){
        
    }
    
    init(){
        
    }
}


