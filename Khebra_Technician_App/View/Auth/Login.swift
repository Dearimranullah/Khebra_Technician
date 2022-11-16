//
//  Login.swift
//  Khebra_Technician_App
//
//  Created by Apple1 on 16/11/2022.
//

import SwiftUI

import iPhoneNumberField
struct Login: View {
   
    @State var textFieldtex:String = ""
    var body: some View {
            ZStack{
                    Color("FAFAFA")
                        .edgesIgnoringSafeArea(.all)
                    VStack{
                        Spacer()
                        VStack(spacing:81.29){
                            HStack{
                                Image("login")
                                    .resizable()
                                    .frame(width: 107,height: 118.71)
                            }
                            VStack(spacing:70){
                                VStack(alignment: .leading,spacing:50){
                                    HStack{
                                        Text("Login")
                                            .font(.custom("Lato-Bold", size:26))
                                            .foregroundColor(Color("10275C"))
                                        
                                    }
                                    VStack(alignment: .leading,spacing:16){
                                        HStack{
                                            Text("Please enter the mobile number")
                                                .textSelection(.enabled)
                                                .font(.custom("Lato-Regular", size:15))
                                        }
                                        HStack{
                                            //                    TextField("+966 |", text: $textFieldtex)
                                            iPhoneNumberField("phone",text: $textFieldtex)                                          
                                                .flagSelectable(true)
                                                .flagHidden(false)
                                                .padding()
                                                .frame(width: 310,height: 45)
                                        }.background(.white)
                                            .border(Color("B2C1E3"),width: 1)
                                    }
                                }
                                NavigationLink {
                                    Password().navigationBarBackButtonHidden(true)
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

                               
                            }
                            
                            
                            
                        }.padding(.bottom,201)
                    }
                    
            }
        
      
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
extension UINavigationController {
    // Remove back button text
    open override func viewWillLayoutSubviews() {
        navigationBar.topItem?.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
}
