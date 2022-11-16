//
//  Password.swift
//  Khebra_Technician_App
//
//  Created by Apple1 on 16/11/2022.
//

import SwiftUI

struct Password: View {
    @FocusState private var number:Bool
    @State private var password: String = ""
    var body: some View {
        ZStack{
            Color("FAFAFA")
                .edgesIgnoringSafeArea(.all)
            VStack{
                Spacer()
                VStack(spacing:72){
                    HStack{
                        Image("Password")
                            .resizable()
                            .frame(width: 221,height: 114)
                    }
                    VStack(spacing:73){
                        VStack(alignment:.leading,spacing:48){
                            HStack{
                                Text("Enter your password")
                                    .font(.custom("STC Bold", size: 25))
                                    .foregroundColor(Color("10275C"))
                            }
                            VStack(alignment: .leading,spacing: 15){
                                HStack{
                                    Text("Please enter the password")
                                        .font(.custom("STCRegular", size: 14))
                                        .foregroundColor(Color("5F5E5E"))
                                }
                                VStack(alignment: .trailing,spacing: 8){
                                    HStack{
                                        SecureField("Enter a password", text: $password)
                                            .focused($number)
                                            .padding()
                                            .frame(width:310,height: 45)
                                            .background(.white)
                                            .border(Color("B2C1E3"),width: 0.2)
                                    }
                                    NavigationLink {
                                        Forget_password().navigationBarBackButtonHidden(true)
                                    } label: {
                                        Text("Forgot Your Password?")
                                            .foregroundColor(Color("10275C"))
                                            .font(.custom("STCRegular", size: 14))
                                    }

                                   
                                }
                            }
                        }
                        VStack(spacing:128){
                            NavigationLink {
                                Bottom_Navigation().navigationBarBackButtonHidden(true)
                            } label: {
                                HStack{
                                    Text("Login")
                                        .fontWeight(.bold)
                                        .font(.system(size: 16))
                                        .frame(width: 176,height: 50)
                                        .foregroundColor(.white)
                                        .background(Color("F27D00"))
                                        .cornerRadius(4)
                                }
                            }

                            NavigationLink {
                                Terms___Conditions()
                            } label: {
                                Text("Terms and Conditions")
                                    .foregroundColor(Color("10275C"))
                                    .font(.custom("STCRegular", size: 14))
                            }

                           
                        }
                    }
                }.padding(.bottom,28)
            }
        }.onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
                self.number=true
            }
        }
    }
}

struct Password_Previews: PreviewProvider {
    static var previews: some View {
        Password()
    }
}
