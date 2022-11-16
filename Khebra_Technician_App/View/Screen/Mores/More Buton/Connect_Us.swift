//
//  Connect_Us.swift
//  Khebra_Technician_App
//
//  Created by Apple1 on 23/11/2022.
//

import SwiftUI

struct Connect_Us: View {
    var body: some View {
        ZStack{
            Color("FAFAFA")
                .edgesIgnoringSafeArea(.all)
            VStack{
                VStack(spacing:60){
                    HStack{
                        Text("Connect Us")
                            .foregroundColor(Color("10275C"))
                            .font(.system(size: 18))
                            .fontWeight(.bold)
                    }
                    VStack(spacing:10){
                        HStack{
                            ConnectUs(image: "WhatsApp", text: "WhatsApp")
                        }
                        HStack{
                            ConnectUs(image: "Quick Conversation", text: "Quick Conversation")
                        }
                        HStack{
                            ConnectUs(image: "Telephone conversation", text: "Telephone conversation")
                        }
                        HStack{
                            RoundedRectangle(cornerRadius: 10)
                                .fill(.clear)
                                .frame(width: 327,height: 60)
                                .border(Color("25D366"),width: 0.2)
                                .background(.white)
                                .overlay{
                                    VStack{
                                        HStack(spacing:20){
                                            Image("Send Email")
                                                .resizable()
                                                .frame(width: 24,height: 18)
                                            Text("Send Email")
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
                Spacer()
            }
        }
    }
}

struct Connect_Us_Previews: PreviewProvider {
    static var previews: some View {
        Connect_Us()
    }
}
