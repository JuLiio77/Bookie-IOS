//
//  Sheet.swift
//  BookieApp
//
//  Created by dam2 on 3/4/24.
//

import Foundation

struct Device: Identifiable, Hashable{
    let id = UUID()
    let name: String
    let iconName: String
}

enum DeviceRepository {
    static let all = [
        Device(name: "Romance", iconName: "airpods"),
        Device(name: "Aventura", iconName: "airpodspro"),
        Device(name: "Fantasía", iconName: "appletv"),
        Device(name: "Misterio", iconName: "applewatch"),
        Device(name: "Thriller", iconName: "homepod"),
        Device(name: "Psicología", iconName: "ipad"),
        Device(name: "Acción", iconName: "iphone"),
        Device(name: "Infantil", iconName: "ipod"),
        Device(name: "Terror", iconName: "pencil.tip"),
        Device(name: "Tragedia", iconName: "airpods"),
        Device(name: "Filosofía", iconName: "airpodspro"),
        Device(name: "Bélico", iconName: "appletv"),
        Device(name: "Clásico", iconName: "pencil.tip"),
        Device(name: "Ciencia Ficción", iconName: "airpods"),
        Device(name: "Poesía", iconName: "airpodspro"),
        Device(name: "Biográfico", iconName: "appletv"),
        Device(name: "Aficiones", iconName: "appletv"),
        Device(name: "Extranjeros", iconName: "appletv"),
        Device(name: "Educativo", iconName: "appletv"),
        Device(name: "Ciencia", iconName: "appletv"),
        Device(name: "Historia", iconName: "appletv"),

    ]
}
