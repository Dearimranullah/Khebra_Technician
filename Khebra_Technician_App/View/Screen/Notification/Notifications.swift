//
//  Notifications.swift
//  Khebra_Technician_App
//
//  Created by Apple1 on 21/11/2022.
//

import SwiftUI

struct Notifications: View {
    @State var isNotification:Bool=false
    var body: some View {
        ZStack{
            Color("FAFAFA")
                .edgesIgnoringSafeArea(.all)
            VStack{
                VStack(spacing:20){
                    VStack{
                        HStack(spacing:83.6){
                            HStack{
                                HStack(spacing:20){
                                    HStack(spacing:10){
                                        Toggle("Enable light mode: ", isOn: $isNotification)
                                            .toggleStyle(DarkModeStyle())
                                        Text("Available")
                                            .foregroundColor(Color("046006"))
                                            .font(.custom("STCRegular", size: 14))
                                    }
                                    HStack{
                                        RoundedRectangle(cornerRadius: 4)
                                            .fill(.white)
                                            .frame(width: 114,height: 45)
                                            .border(Color("B2C1E3"),width: 0.2)
                                            .background(.white)
                                            .overlay{
                                                HStack{
                                                    
                                                    Text("Balance")
                                                        .font(.custom("STCRegular", size: 14))
                                                        .foregroundColor(Color("B2C1E3"))
                                                    Text("0.00")
                                                        .foregroundColor(Color("F27D00"))
                                                        .font(.custom("STC Bold", size:18))
                                                    
                                                }
                                                
                                            }
                                    }
                                }
                            }
                                HStack{
                                    Image("bell")
                                        .resizable()
                                        .frame(width:22,height: 31.26)
                                }
                            
                        }.padding(.trailing,24.4)
                    }
                    VStack(spacing:10){
                            Notification_Component(image: "Plumbing", text1: "The customer has sent you the order \n request.", Width: 32, Height: 23)
                        Notification_Component(image: "icon5", text1: "The invoice has been successfully paid from customer number 000000", Width: 19.19, Height: 19.8)
                        
                        VStack{
                            RoundedRectangle(cornerRadius: 4)
                                .fill(.clear)
                                .frame(width: 317,height: 65)
                                .border(Color("B2C1E3"),width: 0.2)
                                .background(.white)
                                .overlay{
                                    
                                    
                                    VStack(alignment:.leading,spacing:2){
                                        HStack(spacing:0){
                                            RoundedRectangle(cornerRadius: 1)
                                                .fill(.clear)
                                                .frame(width: 46,height: 45)
                                                .background(Color("FAFAFA"))
                                                .overlay{
                                                    Image("icon1")
                                                        .resizable()
                                                        .frame(width:17.2,height:15)
                                                        .background(Color("FAFAFA"))
                                                    
                                                }
                                            
                                            HStack{
                                                Text("Congratulations,")
                                                    .font(.custom("STCRegular", size: 13))
                                                    .foregroundColor(Color("F27D00"))
                                                + Text("your balance has been recharged with 80 SAR")
                                                    .font(.custom("STCRegular", size: 13))
                                                    .foregroundColor(Color("5A5A5A"))
                                            }
                                        }
                                        HStack{
                                            Spacer()
                                            Text("04:30 PM")
                                                .font(.custom("STCRegular", size: 12))
                                                .foregroundColor(Color("B2C1E3"))
                                            
                                        }
                                        .frame(height: 1)
                                        .padding(.trailing,6)
                                    }.padding(.leading,10)
                                    
                                }
                            
                        }
                        Notification_Component(image: "icon2", text1: "You have an update now", Width: 17.2, Height: 18.64)
                        
                        Notification_Component(image: "icon3", text1: "The customer postponed the order", Width: 18, Height: 20)
                        NavigationLink {
                            Order_Warranty_Claim()
                        } label: {
                            Notification_Component(image: "icon4", text1: "The customer has sent warranty claim", Width: 19.12, Height: 23.67)
                        }

                       
                        
                    }
                }.padding(.top,28.67)
                Spacer()
            }
           
        }
    }
}

struct Notifications_Previews: PreviewProvider {
    static var previews: some View {
        Notifications()
    }
}
