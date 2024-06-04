//
//  FuncionLogin.swift
//  BookieApp
//
//  Created by dam2 on 18/3/24.
//

import SwiftUI

class FuncionLogin: ObservableObject{
    
// static let shared = FuncionLogin()
 //   var taber = TabarView()
    var peticiones = Peticiones()
    
    @Published var name: String = UserDefaults.standard.string(forKey: "username") ?? ""
    @Published var password: String = UserDefaults.standard.string(forKey: "password") ?? ""
    @Published var repassword: String = UserDefaults.standard.string(forKey: "repassword") ?? ""
    @Published var recordarConta: Bool = UserDefaults.standard.bool(forKey: "toogle")
    @Published var tokeen: String = UserDefaults.standard.string(forKey: "token") ?? ""
    @Published var email: String = UserDefaults.standard.string(forKey: "email") ?? ""
    @Published var provincia: String = UserDefaults.standard.string(forKey: "provincia") ?? ""
    @Published var codigoPostal: String = UserDefaults.standard.string(forKey: "codigoPostal") ?? ""
    @Published var ciudad: String = UserDefaults.standard.string(forKey: "ciudad") ?? ""
    @Published var foto: String = UserDefaults.standard.string(forKey: "foto") ?? ""
    @Published var username: String = UserDefaults.standard.string(forKey: "username") ?? ""
    @Published var prefeLite: String = UserDefaults.standard.string(forKey: "preferencia") ?? ""
    
    
    func check(name: String, pass: String) {
        
        peticiones.login(AuthRequest(username: name, password: pass)){ result in
            
            switch result{
            case .success(let token):
                print("Login succesful \(token)")
            case .failure(let error):
                print("Error en el login \(error)")
            }
        }
        
        
        
       
    }
        
        //        peticiones.login(username: name, password: pass){ result in
        //
        //            switch result{
        //            case .success(let token):
        //                print("Login correcto \(token)")
        //
        //            case .failure(let error):
        //                print("Error en el login \(error)")
        //
        //            }
        //        }
        
        
        
        
        
        
        func register(){
            
            if !name.isEmpty && !email.isEmpty && !password.isEmpty && !repassword.isEmpty{
                
                if password.elementsEqual(repassword){
                    
                    UserDefaults.standard.setValue(name, forKey: "name")
                    UserDefaults.standard.setValue(email, forKey: "email")
                    UserDefaults.standard.setValue(password, forKey: "password")
                    UserDefaults.standard.setValue(repassword, forKey: "repassword")
                    UserDefaults.standard.setValue(ciudad, forKey: "ciudad")
                    UserDefaults.standard.setValue(provincia, forKey: "provincia")
                    UserDefaults.standard.setValue(codigoPostal, forKey: "codigoPostal")
                    UserDefaults.standard.setValue(username, forKey: "username")
                    
                    peticiones.PostRegister(RegisterRequest(nombre: name, username: username, password: password, email: email, ciudad: ciudad, provincia: provincia, codigoPostal: codigoPostal, foto: foto, reportado: false, token: tokeen))
                    
                }
                
            }else{
                print("Registro Fallido")
            }
            
        }
        
        func mostrarDefault(){
            
        }
    
    
        
        
        
    
}


