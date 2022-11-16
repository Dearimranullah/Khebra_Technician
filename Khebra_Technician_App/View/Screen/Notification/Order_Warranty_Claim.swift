//
//  Order_Warranty_Claim.swift
//  Khebra_Technician_App
//
//  Created by Apple1 on 21/11/2022.
//

import SwiftUI

struct Order_Warranty_Claim: View {
    var body: some View {
        ZStack{
            Color("FAFAFA")
                .edgesIgnoringSafeArea(.all)
            VStack{
                Spacer()
                VStack(spacing:41){
                    VStack(spacing:43){
                        HStack{
                            Text("Order Warranty Claim")
                                .font(.custom("STC Bold", size: 18))
                                .foregroundColor(Color("10275C"))
                        }
                        VStack(spacing:40){
                            VStack{
                                RoundedRectangle(cornerRadius: 4)
                                    .fill(Color(.white))
                                    .frame(width: 317,height: 50)
                                    .border(Color("B2C1E3"),width: 0.2)
                                    .overlay{
                                        HStack(spacing:135){
                                            HStack{
                                                Text("Order No.")
                                                    .font(.custom("STCRegular", size: 14))
                                                    .foregroundColor(Color("B2C1E3"))
                                                + Text("#58246")
                                                    .font(.custom("STCRegular", size: 14))
                                                    .foregroundColor(Color("000000"))
                                                
                                            }
                                            Image("Plumbing")
                                                .resizable()
                                                .frame(width: 44,height: 31)
                                        }
                                    }
                            }
                            VStack(spacing:16){
                                VStack(alignment:.leading,spacing:11){
                                    HStack(spacing:11){
                                        Image("location")
                                            .resizable()
                                            .frame(width:12,height: 15)
                                        Text("Order Location")
                                            .font(.custom("STC Bold", size: 16))
                                            .foregroundColor(Color("10275C"))
                                    }
                                    Line()
                                        .stroke(style: StrokeStyle(lineWidth: 1, dash: [5]))
                                        .frame(width: 317,height: 1)
                                }
                                VStack(alignment:.leading,spacing:23){
                                    HStack{
                                        Image("map")
                                            .resizable()
                                            .frame(width: 316,height: 180)
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
                            
                        }
                    }
                    HStack(spacing:20){
                                HStack{
                                    RoundedRectangle(cornerRadius: 3)
                                        .fill(Color("F27D00"))
                                        .frame(width:103,height: 50)
                                        .overlay{
                                            VStack{
                                                Text("Issuance of \n invoice")
                                                    .foregroundColor(.white)
                                                    .multilineTextAlignment(.center)
                                                    .font(.system(size: 16))
                                                    .bold()
                                            }
                                        }
                                }
                            HStack{
                                RoundedRectangle(cornerRadius: 3)
                                    .fill(Color("F27D00"))
                                    .frame(width:103,height: 50)
                                    .overlay{
                                        VStack{
                                            Text("Call Customer")
                                                .foregroundColor(.white)
                                                .multilineTextAlignment(.center)
                                                .font(.system(size: 16))
                                                .bold()
                                        }
                                    }
                            }
                        }
                }.padding(.bottom,61)
            }
        }
        
    }
}

struct Order_Warranty_Claim_Previews: PreviewProvider {
    static var previews: some View {
        Order_Warranty_Claim()
    }
}
