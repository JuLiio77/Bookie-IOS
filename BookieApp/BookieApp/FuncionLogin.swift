//
//  FuncionLogin.swift
//  BookieApp
//
//  Created by dam2 on 18/3/24.
//

import SwiftUI

class FuncionLogin: ObservableObject{

    static let shared = FuncionLogin()
    var peticiones = Peticiones()
    
    @Published var name: String = UserDefaults.standard.string(forKey: "username") ?? ""
    @Published var password: String = UserDefaults.standard.string(forKey: "password") ?? ""
    @Published var repassword: String = UserDefaults.standard.string(forKey: "repassword") ?? ""
    @Published var recordarConta: Bool = UserDefaults.standard.bool(forKey: "toogle")
    @Published var tokeen: Bool = UserDefaults.standard.bool(forKey: "token")
    @Published var email: String = UserDefaults.standard.string(forKey: "email") ?? ""
    @Published var provincia: String = UserDefaults.standard.string(forKey: "provincia") ?? ""
    @Published var codigoPostal: String = UserDefaults.standard.string(forKey: "codigoPostal") ?? ""
    @Published var ciudad: String = UserDefaults.standard.string(forKey: "ciudad") ?? ""
    @Published var username: String = UserDefaults.standard.string(forKey: "username") ?? ""
    @Published var prefeLite: String = UserDefaults.standard.string(forKey: "preferencia") ?? ""
    
    
    func check(username: String, password: String) {
        
        peticiones.login(username: username, password: password) { result in
            
            switch result {
                
            case .success(_):
                
                var modelo = ModelUser(id: 2, username: "jose1", password: "12345", email: "jose@gmail", ciudad: "Baza", provincia: "Granada", codigoPostal: "18800", foto: "foto", reportado: false, token: "")
                
                self.tokeen = true
                
                print("todo bien en el checkeo")
            
            case .failure(_):
                
                print("error en el checkeo")
                
            }
            
        }
        
    }



    
    
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


