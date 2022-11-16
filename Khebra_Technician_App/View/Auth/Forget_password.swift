//
//  Forget_password.swift
//  Khebra_Technician_App
//
//  Created by Apple1 on 16/11/2022.
//

import SwiftUI

struct Forget_password: View {
    var body: some View {
        ZStack{
            Color("FAFAFA")
                .edgesIgnoringSafeArea(.all)
            VStack{
                Spacer()
                VStack(spacing:32){
                    HStack{
                        Image("Password Sent")
                            .resizable()
                            .frame(width: 193.36,height: 136.69)
                    }
                    VStack(spacing:64){
                        VStack(spacing:34){
                            HStack{
                                Text("Password Sent")
                                    .foregroundColor(Color("10275C"))
                                    .font(.custom("STC Bold", size: 25))
                            }
                            HStack{
                                Text("Your password has sent to your mobile through SMS.")
                                    .foregroundColor(Color("5F5E5E"))
                                    .font(.custom("STCRegular", size: 14))
                                
                            }
                        }
                        NavigationLink {
                            Password().navigationBarBackButtonHidden(true)
                        } label: {
                            HStack{
                                Text("Login")
                                    .fontWeight(.bold)
                                    .font(.system(size: 16))
                                    .frame(width: 280,height: 50)
                                    .foregroundColor(.white)
                                    .background(Color("F27D00"))
                                    .cornerRadius(4)
                            }
                        }

                      
                    }
                }.padding(.bottom,345)
            }
        }
    }
}

struct Forget_password_Previews: PreviewProvider {
    static var previews: some View {
        Forget_password()
    }
}
