//
//  Celda.swift
//  BookieApp
//
//  Created by dam2 on 3/4/24.
//

import SwiftUI

struct Celda: View {
    let device: Device
    var body: some View {
        VStack{
            Image(systemName: device.iconName)
                .font(.largeTitle)
            Text(device.name)
                .font(.caption)
                .multilineTextAlignment(.center)
                .foregroundColor(.primary)
        }
        .frame(maxWidth: .infinity, maxHeight:  .infinity)
    }
}

#Preview {
    Celda(device: DeviceRepository.all[0])
}
