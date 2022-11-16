//
//  ConnectUs.swift
//  Khebra_Technician_App
//
//  Created by Apple1 on 23/11/2022.
//

import SwiftUI

struct ConnectUs: View {
    let image:String
    let text:String
    var body: some View {
        VStack{
            RoundedRectangle(cornerRadius: 10)
                .fill(.clear)
                .frame(width: 327,height: 60)
                .border(Color("25D366"),width: 0.2)
                .background(.white)
                .overlay{
                    VStack{
                        HStack(spacing:20){
                            Image(image)
                                .resizable()
                                .frame(width: 30,height: 30)
                            Text(text)
                                .font(.system(size: 16))
                                .foregroundColor(Color("10275C"))
                           Spacer()
                        }
                        .padding(.leading,20)
                    }
                }
        }
    }
}

struct ConnectUs_Previews: PreviewProvider {
    static var previews: some View {
        ConnectUs(image: "WhatsApp", text: "WhatsApp")
    }
}
