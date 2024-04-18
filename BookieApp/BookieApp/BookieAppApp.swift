//
//  BookieAppApp.swift
//  BookieApp
//
//  Created by dam2 on 11/3/24.
//

import SwiftUI

@main
struct BookieAppApp: App {
    
    @EnvironmentObject var userData: FuncionLogin
    var body: some Scene {
        WindowGroup {
            
            //userData.viewDidLoad()
            ContentView()
                .environmentObject(FuncionLogin())

        }
    }
    


}
