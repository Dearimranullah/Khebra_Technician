//
//   practeces.swift
//  Khebra_Technician_App
//
//  Created by Apple1 on 22/11/2022.
//

import SwiftUI

struct _practeces: View {
    @State private var lightModeEnabled = false
    var body: some View {
        Toggle("Enable light mode: ", isOn: $lightModeEnabled)
            .toggleStyle(DarkModeStyle())
    }
}

struct _practeces_Previews: PreviewProvider {
    static var previews: some View {
        _practeces()
    }
}
//struct DarkModeStyle: ToggleStyle {
//    func makeBody(configuration: Configuration) -> some View {
//        Rectangle()
//            .fill(configuration.isOn ? Color.green : Color.gray)
//            .animation(.easeInOut)
//            .frame(width: 20, height: 12)
//            .cornerRadius(40)
//            .overlay(
//                Image(systemName: configuration.isOn ? "circlebadge.fill" : "circlebadge.fill")
//                    .resizable()
//                    .frame(width: 10, height: 10)
//                    .foregroundColor(.white)
//                    .padding(.all, 16)
//                    .offset(x: configuration.isOn ? 5 : -5, y: 0)
//                    .animation(.easeInOut)
//            )
//            .onTapGesture { configuration.isOn.toggle() }
//    }
//}
