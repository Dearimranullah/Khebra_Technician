//
//  Toggle.swift
//  Khebra_Technician_App
//
//  Created by Apple1 on 22/11/2022.
//
import SwiftUI
import Foundation
struct DarkModeStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        Rectangle()
            .fill(configuration.isOn ? Color.green : Color.gray)
            .animation(.easeInOut)
            .frame(width: 20, height: 12)
            .cornerRadius(40)
            .overlay(
                Image(systemName: configuration.isOn ? "circlebadge.fill" : "circlebadge.fill")
                    .resizable()
                    .frame(width: 8, height: 8)
                    .foregroundColor(.white)
                    .padding(.all, 16)
                    .offset(x: configuration.isOn ? 4 : -4, y: 0)
                    .animation(.easeInOut)
            )
            .onTapGesture { configuration.isOn.toggle() }
    }
}
