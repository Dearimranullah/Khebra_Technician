//
//  Rating factors.swift
//  Khebra_Technician_App
//
//  Created by Apple1 on 23/11/2022.
//

import SwiftUI

struct Rating_factors: View {
    var body: some View {
        ZStack{
            Color("FAFAFA")
                .edgesIgnoringSafeArea(.all)
            VStack{
                VStack(spacing:50){
                    HStack{
                        Text("Rating factors")
                            .foregroundColor(Color("10275C"))
                            .font(.custom("STC Bold", size:18))
                    }
                    VStack{
                        RoundedRectangle(cornerRadius: 1)
                            .fill(.clear)
                            .frame(width: 345,height: 322)
                            .border(Color("B2C1E3"),width: 0.2)
                            .background(.white)
                            .overlay{
                                VStack(spacing:0){
                                    VStack(spacing:0){
                                        HStack{
                                            Text("Factors")
                                                .foregroundColor(Color("10275C"))
                                                .font(.custom("STCRegular", size: 14))
                                            Spacer()
                                            Divider()
                                            Text("Positive")
                                                .foregroundColor(Color("10275C"))
                                                .font(.custom("STCRegular", size: 14))
                                            Divider()
                                            Text("Passive")
                                                .foregroundColor(Color("10275C"))
                                                .font(.custom("STCRegular", size: 14))
                                        }
                                        Divider()
                                    }
                                    VStack(spacing:0){
                                        HStack{
                                            Text("Work perfiction")
                                                .foregroundColor(Color("5A5A5A"))
                                                .font(.custom("STCRegular", size: 14))
                                            Spacer()
                                            Divider()
                                            Text("+ 40")
                                                .frame(width:48,height: 19)
                                                .foregroundColor(Color("10275C"))
                                                .font(.custom("STCRegular", size: 14))
                                            Divider()
                                            Text("- 5")
                                                .frame(width:44,height: 19)
                                                .foregroundColor(Color("10275C"))
                                                .font(.custom("STCRegular", size: 14))
                                                .padding(.trailing,6)
                                        }
                                        Divider()
                                    }
                                    VStack(spacing:0){
                                        HStack{
                                            Text("Arrival time")
                                                .foregroundColor(Color("5A5A5A"))
                                                .font(.custom("STCRegular", size: 14))
                                            Spacer()
                                            Divider()
                                            Text("+ 30")
                                                .frame(width:48,height: 19)
                                                .foregroundColor(Color("10275C"))
                                                .font(.custom("STCRegular", size: 14))
                                            Divider()
                                            Text("- 0")
                                                .frame(width:44,height: 19)
                                                .foregroundColor(Color("10275C"))
                                                .font(.custom("STCRegular", size: 14))
                                                .padding(.trailing,6)
                                        }
                                        Divider()
                                    }
                                    VStack(spacing:0){
                                        HStack{
                                            Text("Performance speed")
                                                .foregroundColor(Color("5A5A5A"))
                                                .font(.custom("STCRegular", size: 14))
                                            Spacer()
                                            Divider()
                                            Text("+ 15")
                                                .frame(width:48,height: 19)
                                                .foregroundColor(Color("10275C"))
                                                .font(.custom("STCRegular", size: 14))
                                            Divider()
                                            Text("- 10")
                                                .frame(width:44,height: 19)
                                                .foregroundColor(Color("10275C"))
                                                .font(.custom("STCRegular", size: 14))
                                                .padding(.trailing,6)
                                        }
                                        Divider()
                                    }
                                    VStack(spacing:0){
                                        HStack{
                                            Text("Dealing with ethics and morals")
                                                .foregroundColor(Color("5A5A5A"))
                                                .font(.custom("STCRegular", size: 14))
                                            Spacer()
                                            Divider()
                                            Text("+ 110")
                                                .frame(width:48,height: 19)
                                                .foregroundColor(Color("10275C"))
                                                .font(.custom("STCRegular", size: 14))
                                            Divider()
                                            Text("- 5")
                                                .frame(width:44,height: 19)
                                                .foregroundColor(Color("10275C"))
                                                .font(.custom("STCRegular", size: 14))
                                                .padding(.trailing,6)
                                        }
                                        Divider()
                                    }
                                    VStack(spacing:0){
                                        HStack{
                                            Text("The appearance")
                                                .foregroundColor(Color("5A5A5A"))
                                                .font(.custom("STCRegular", size: 14))
                                            Spacer()
                                            Divider()
                                            Text("+ 33")
                                                .frame(width:48,height: 19)
                                                .foregroundColor(Color("10275C"))
                                                .font(.custom("STCRegular", size: 14))
                                            Divider()
                                            Text("- 3")
                                                .frame(width:44,height: 19)
                                                .foregroundColor(Color("10275C"))
                                                .font(.custom("STCRegular", size: 14))
                                                .padding(.trailing,6)
                                        }
                                        Divider()
                                    }
                                    VStack(spacing:0){
                                        HStack{
                                            Text("Complete the application")
                                                .foregroundColor(Color("5A5A5A"))
                                                .font(.custom("STCRegular", size: 14))
                                            Spacer()
                                            Divider()
                                            Text("+ 60")
                                                .frame(width:48,height: 19)
                                                .foregroundColor(Color("10275C"))
                                                .font(.custom("STCRegular", size: 14))
                                            Divider()
                                            Text("- 2")
                                                .frame(width:44,height: 19)
                                                .foregroundColor(Color("10275C"))
                                                .font(.custom("STCRegular", size: 14))
                                                .padding(.trailing,6)
                                        }
                                        Divider()
                                    }
                                    VStack(spacing:0){
                                        HStack{
                                            Text("Apply for orders")
                                                .foregroundColor(Color("5A5A5A"))
                                                .font(.custom("STCRegular", size: 14))
                                            Spacer()
                                            Divider()
                                            Text("+ 111")
                                                .frame(width:48,height: 19)
                                                .foregroundColor(Color("10275C"))
                                                .font(.custom("STCRegular", size: 14))
                                            Divider()
                                            Text("- 0")
                                                .frame(width:44,height: 19)
                                                .foregroundColor(Color("10275C"))
                                                .font(.custom("STCRegular", size: 14))
                                                .padding(.trailing,6)
                                        }
//                                        Divider()
                                    }
                                    
                                    
                                }.padding(.horizontal,4)
                            }
                    }
                }
                Spacer()
            }
        }
    }
}

struct Rating_factors_Previews: PreviewProvider {
    static var previews: some View {
        Rating_factors()
    }
}
