//
//  BookieAppApp.swift
//  BookieApp
//
//  Created by dam2 on 11/3/24.
//

import SwiftUI

@main
struct BookieAppApp: App {
    var body: some Scene {
        WindowGroup {
            TabarView()
                .environmentObject(FuncionLogin())
//            RegistroView()
//                .environmentObject(FuncionLogin())
        }
    }
}
