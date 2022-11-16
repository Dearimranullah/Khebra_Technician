//
//  Orders.swift
//  Khebra_Technician_App
//
//  Created by Apple1 on 17/11/2022.
//

import SwiftUI

struct Orders: View {
    @State private var isAvailable = true
    private let buttonArray = [ "New Order","Deferred","Completed" ]
    @State var selectedIndex:Int = 0
    var body: some View {
        ZStack{
            Color("FAFAFA")
                .edgesIgnoringSafeArea(.all)
            VStack{

            VStack(spacing:25){
                HStack(spacing:83.6){
                    HStack{
                        HStack(spacing:20){
                            HStack(spacing:10){
                                Toggle("Enable light mode: ", isOn: $isAvailable)
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
                VStack(spacing:40){
                    //                    Spacer()
                    HStack{
                        RoundedRectangle(cornerRadius: 2)
                            .fill(.clear)
                            .frame(width: 317,height: 50)
                            .border(Color("B2C1E3"))
                            .background(.white)
                            .overlay{
                                HStack{
                                    ForEach(0 ..< 3) { item in
                                        Active_Button(isActive: item == selectedIndex, text: buttonArray[item])
                                            .onTapGesture {
                                                selectedIndex = item
                                            }
                                    }.padding(.horizontal,-2)
                                    
                                }
                            }
                    }
                    if selectedIndex==0{
                        NavigationLink {
                            New_Order_Details()
                        } label: {
                            New_Order_Card()
                        }
                       
                    } else if selectedIndex == 1{
                        VStack(spacing:10){
                            NavigationLink {
                                Deferred_Order_Details()
                            } label: {
                                Deferred_Card()
                            }
                            NavigationLink {
                                Deferred_Order_Details()
                            } label: {
                                Deferred_Card()
                            }
                        }
                    } else if selectedIndex == 2{
                        VStack{
                            NavigationLink {
                                Completed_Order_Details()
                            } label: {
                                Completed_Card(string: "Paid Cash", Width: 93, Height: 25)
                            }
                            Completed_Card(string: "Paid Credit Card", Width: 98, Height: 25)
                        }
                    }
                    
                    
                }
            }.padding(.top,28.67)
                Spacer()
            }
        }
    }
}

struct Orders_Previews: PreviewProvider {
    static var previews: some View {
        Orders()
    }
}
