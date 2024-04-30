//
//  FuncionLogin.swift
//  BookieApp
//
//  Created by dam2 on 18/3/24.
//

import SwiftUI

class FuncionLogin: ObservableObject{
    
    static let shared = FuncionLogin()
    var taber = TabarView()
    var peticiones = Peticiones()
    
    @Published var name: String = UserDefaults.standard.string(forKey: "username") ?? "jose1"
    @Published var password: String = UserDefaults.standard.string(forKey: "password") ?? ""
    @Published var repassword: String = UserDefaults.standard.string(forKey: "repassword") ?? ""
    @Published var recordarConta: Bool = UserDefaults.standard.bool(forKey: "toogle")
    @Published var tokeen: String = UserDefaults.standard.string(forKey: "token") ?? ""
    @Published var email: String = UserDefaults.standard.string(forKey: "email") ?? ""
    @Published var provincia: String = UserDefaults.standard.string(forKey: "provincia") ?? ""
    @Published var codigoPostal: String = UserDefaults.standard.string(forKey: "codigoPostal") ?? ""
    @Published var ciudad: String = UserDefaults.standard.string(forKey: "ciudad") ?? ""
    @Published var username: String = UserDefaults.standard.string(forKey: "username") ?? ""
    @Published var prefeLite: String = UserDefaults.standard.string(forKey: "preferencia") ?? ""
    
    
    func check(username: String, password: String) {
        
        peticiones.login(username: username, password: password) { result in
            switch result {
            case .success(let token):
                print("Login successful with token: \(token)")
                
            case .failure(let error):
                
                print("Login error \(error.localizedDescription)")

            }
        }
    }    
    
    func register(){
    
        if !name.isEmpty && !email.isEmpty && !password.isEmpty && !repassword.isEmpty{
            
            if password.elementsEqual(repassword){
                
                UserDefaults.standard.setValue(name, forKey: "username")
                UserDefaults.standard.setValue(email, forKey: "email")
                UserDefaults.standard.setValue(password, forKey: "password")
                UserDefaults.standard.setValue(repassword, forKey: "repassword")
                UserDefaults.standard.setValue(ciudad, forKey: "ciudad")
                UserDefaults.standard.setValue(provincia, forKey: "provincia")
                UserDefaults.standard.setValue(codigoPostal, forKey: "codigoPostal")
                UserDefaults.standard.setValue(username, forKey: "username")
                
                peticiones.PostRegister(name: name, username: username, password: password, email: email, repass: repassword, provincia: provincia, ciudad: ciudad, codigoPos: Int(codigoPostal)!)
                    
            }

        }else{
            print("Registro Fallido")
        }
    
    }
    
    func mostrarDefault(){
        
    }
    
    init(){
        
    }
}


