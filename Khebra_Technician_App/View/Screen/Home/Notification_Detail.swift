//
//  Notification_Detail.swift
//  Khebra_Technician_App
//
//  Created by Apple1 on 17/11/2022.
//

import SwiftUI

struct Notification_Detail: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack{
            Color("FAFAFA")
                .edgesIgnoringSafeArea(.all)
            VStack{
                Spacer()
                VStack(spacing:351){
                    VStack(spacing:28){
                        HStack{
                            Text("Notifications")
                                .foregroundColor(Color("10275C"))
                                .font(.custom("STC Bold", size: 18))
                        }
                        VStack(spacing:33){
                            HStack{
                                Text("The customer has sent you the order request.")
                                    .font(.custom("STC Bold", size: 16))
                                    .foregroundColor(Color("10275C"))
                            }
                            VStack(alignment:.leading,spacing: 13){
                                VStack{
                                    HStack(alignment:.top,spacing:13){
                                        Image("customer")
                                            .resizable()
                                            .frame(width:15,height: 15)
                                        VStack(alignment: .leading,spacing: 8){
                                            Text("Customer")
                                                .foregroundColor(Color("B2C1E3"))
                                                .font(.custom("STCRegular", size: 14))
                                            Text("Mohammed Abed ElAzizi")
                                                .foregroundColor(Color("5A5A5A"))
                                                .font(.custom("STCRegular", size: 14))
                                        }
                                    }
                                    
                                    
                                }
                                VStack{
                                    HStack(alignment:.top,spacing:13){
                                        Image("time")
                                            .resizable()
                                            .frame(width:15,height: 15)
                                        VStack(alignment: .leading,spacing: 8){
                                            Text("Date & time")
                                                .foregroundColor(Color("B2C1E3"))
                                                .font(.custom("STCRegular", size: 14))
                                            Text("6/6/2022, 05:30 PM")
                                                .foregroundColor(Color("5A5A5A"))
                                                .font(.custom("STCRegular", size: 14))
                                        }
                                    }
                                    
                                    
                                }
                                VStack{
                                    HStack(alignment:.top,spacing:13){
                                        Image("Address")
                                            .resizable()
                                            .frame(width:12,height: 15)
                                        VStack(alignment: .leading,spacing: 8){
                                            Text("Address")
                                                .foregroundColor(Color("B2C1E3"))
                                                .font(.custom("STCRegular", size: 14))
                                            Text("As Sahafah, Olaya St. 6531, 3059 Riyadh 13321, Saudi Arabia")
                                                .frame(width: 228,height:41)
                                                .foregroundColor(Color("5A5A5A"))
                                                .font(.custom("STCRegular", size: 14))
                                        }
                                    }
                                    
                                    
                                    
                                }
                            }
                        }
                    }
                    HStack(spacing:9){
                            VStack{
                                Button {
                                    presentationMode.wrappedValue.dismiss()
                                } label: {
                                    RoundedRectangle(cornerRadius: 4)
                                        .fill(.clear)
                                        .frame(width: 117,height: 50)
                                        .border(Color("F27D00"),width: 1)
                                        .overlay{
                                            Text("Reject")
                                                .foregroundColor(Color("F27D00"))
                                                .font(.custom("Lato-Medium", size: 16))
                                        }
                                }

                                
                            }
                        NavigationLink {
                            Order_Accepted()
                        } label: {
                            VStack{
                                RoundedRectangle(cornerRadius: 4)
                                    .fill(Color("F27D00"))
                                    .frame(width: 117,height: 50)
                                    .border(Color("F27D00"),width: 1)
                                    .overlay{
                                        Text("Accept")
                                            .foregroundColor(.white)
                                            .font(.custom("Lato-Medium", size: 16))
                                    }
                            }
                        }

                       
                    }
                }.padding(.bottom,55)
            }
        }
    }
}

struct Notification_Detail_Previews: PreviewProvider {
    static var previews: some View {
        Notification_Detail()
    }
}
