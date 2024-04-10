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
    @Published var provincia: String = UserDefaults.standard.string(forKey: "provincia") ?? ""
    @Published var codigoPostal: String = UserDefaults.standard.string(forKey: "codigoPostal") ?? ""
    @Published var ciudad: String = UserDefaults.standard.string(forKey: "ciudad") ?? ""
    
    
    func check(username: String, password: String){
        
        peticiones.login(username: email, password: password){ login in
                    switch login {
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
    
        if !name.isEmpty && !email.isEmpty && !password.isEmpty && !repassword.isEmpty{
            
            if password.elementsEqual(repassword){
                
                UserDefaults.standard.setValue(name, forKey: "username")
                UserDefaults.standard.setValue(email, forKey: "email")
                UserDefaults.standard.setValue(password, forKey: "password")
                UserDefaults.standard.setValue(repassword, forKey: "repassword")
                UserDefaults.standard.setValue(ciudad, forKey: "ciudad")
                UserDefaults.standard.setValue(provincia, forKey: "provincia")
                UserDefaults.standard.setValue(codigoPostal, forKey: "codigoPostal")
                
                peticiones.PostRegister(name: name, password: password, email: email, repass: repassword, provincia: provincia, ciudad: ciudad, codigoPos: Int(codigoPostal)!){ regis in
                                    switch regis {
                                    case .success(let token):
                                        print("Token creado: \(token)")
                                    case .failure(let error):
                                        print("No se pudo realizar el registro \(error.localizedDescription)")
                                    }
                    
                }
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


