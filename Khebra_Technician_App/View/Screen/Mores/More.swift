//
//  More.swift
//  Khebra_Technician_App
//
//  Created by Apple1 on 21/11/2022.
//

import SwiftUI

struct More: View {
    @State var isAvailable:Bool=false
    var body: some View {
        ZStack{
            Color("FAFAFA")
                .edgesIgnoringSafeArea(.all)
            VStack{
                VStack(spacing:32){
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
                    VStack(alignment:.leading,spacing:10){
                        HStack(spacing:5){
                            NavigationLink {
                                Profile()
                            } label: {
                                More_Component(name:"Profile", image: "customer", Width: 13.93, Height: 19.5)
                            }
                            More_Component(name:"Notification", image: "Notifications", Width: 16.41, Height: 17.78)
                        }
                        HStack(spacing:5){
                            NavigationLink {
                                Income()
                            } label: {
                                More_Component(name:"Income", image: "Income", Width: 19.4, Height: 19.92)
                            }
                            NavigationLink {
                                Recharge()
                            } label: {
                                More_Component(name:"Recharge", image: "Recharge", Width: 18, Height: 18)
                            }
                           
                        }
                        HStack(spacing:5){
                            NavigationLink {
                                Statistics()
                            } label: {
                                More_Component(name:"Statistics", image: "Statistics", Width: 17, Height: 17)
                            }

                            NavigationLink {
                                Work_Controls()
                            } label: {
                                VStack{
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(.clear)
                                        .frame(width: 155,height: 55)
                                        .border(Color("B2C1E3"),width: 1)
                                        .background(.white)
                                        .overlay{
                                            VStack{
                                                HStack(spacing:12){
                                                    Image("Work controls")
                                                        .resizable()
                                                        .frame(width:15,height:17)
                                                    
                                                    Text("Work controls")
                                                        .font(.custom("STCRegular", size: 16))
                                                        .frame(width: 100,height: 21)
                                                        .foregroundColor(Color("5A5A5A"))
                                                    Spacer()
                                                    
                                                }.padding(.leading,21.7)
                                            }
                                            
                                        }
                                }
                            }

                           
                        }
                        HStack(spacing:5){
                            NavigationLink {
                                Rating()
                            } label: {
                                More_Component(name:"Rating", image: "Rating", Width: 19.42, Height: 19.39)
                            }

                            NavigationLink {
                                Rating_factors()
                            } label: {
                                VStack{
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(.clear)
                                        .frame(width: 155,height: 55)
                                        .border(Color("B2C1E3"),width: 1)
                                        .background(.white)
                                        .overlay{
                                            VStack{
                                                HStack(spacing:12){
                                                    Image("Rating factors")
                                                        .resizable()
                                                        .frame(width:21.48,height:12.94)
                                                    
                                                    Text("Rating factors")
                                                        .font(.custom("STCRegular", size: 16))
                                                        .frame(width: 100,height: 21)
                                                        .foregroundColor(Color("5A5A5A"))
                                                    Spacer()
                                                    
                                                }.padding(.leading,21.7)
                                            }
                                            
                                        }
                                }
                            }

                           
                        }
                        HStack(spacing:5){
                            More_Component(name:"Prices", image: "Prices", Width: 18, Height: 18)
                            NavigationLink {
                                Connect_Us()
                            } label: {
                                More_Component(name:"Connect Us", image: "Connect Us", Width: 16.1, Height: 16.13)
                            }

                           
                        }
                        HStack(spacing:5){
                            NavigationLink {
                                How_to_use()
                            } label: {
                                More_Component(name:"How to use", image: "How to use", Width: 18, Height: 18)
                            }

                            NavigationLink {
                                Setting()
                            } label: {
                                More_Component(name:"Setting", image: "Setting", Width: 15.38, Height: 16.62)
                            }

                           
                        }
                        HStack(spacing:5){
                            More_Component(name:"Share", image: "Share", Width: 16.3, Height: 13)
                            NavigationLink {
                                Invoices()
                            } label: {
                                More_Component(name:"Invoices", image: "Invoices", Width: 17.7, Height: 16.96)
                            }

                            
                        }
                        HStack(spacing:5){
                            NavigationLink {
                                Login().navigationBarBackButtonHidden(true)
                            } label: {
                                More_Component(name:"Logout", image: "Logout", Width: 19.5, Height: 19.5)
                            }

                           
                        }
                    }
                    
                }
                .padding(.top,28.67)
                Spacer()
                
            }
        }

    }
}

struct More_Previews: PreviewProvider {
    static var previews: some View {
        More()
    }
}
