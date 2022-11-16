//
//  Active_Button.swift
//  Khebra_Technician_App
//
//  Created by Apple1 on 17/11/2022.
//

import SwiftUI

struct Active_Button: View {
    let isActive:Bool
    let text:String
    var body: some View {
        VStack{
                Text(text)
                .frame(width: 99,height: 40)
                .foregroundColor(isActive ? Color(.white):Color("B2C1E3"))
                .background(isActive ?  Color("10275C") : Color(.white))
                .cornerRadius(5)

        }
    }
}

struct Active_Button_Previews: PreviewProvider {
    static var previews: some View {
        Active_Button(isActive: true, text: "hello")
    }
}
