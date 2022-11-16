//
//  Order_Accepted.swift
//  Khebra_Technician_App
//
//  Created by Apple1 on 17/11/2022.
//

import SwiftUI

struct Order_Accepted: View {
    var body: some View {
        ZStack{
            Color("FAFAFA")
                .edgesIgnoringSafeArea(.all)
            VStack{
                Spacer()
                        VStack(spacing:40.75){
                            VStack{
                                HStack{
                                    Image("Done")
                                        .resizable()
                                        .frame(width: 146.96,height: 150)
                                }
                            }
                            
                            VStack(spacing:42){
                                VStack(spacing:27){
                                    HStack{
                                        Text("Order Accepted")
                                            .font(.custom("STC Bold", size: 20))
                                            .foregroundColor(Color("10275C"))
                                    }
                                    HStack{
                                        Text("You have successfully accepted the order. You can see this order in ORDER tab.")
                                            .frame(width:258,height: 52)
                                            .font(.custom("STCRegular", size: 14))
                                            .multilineTextAlignment(.center)
                                            .foregroundColor(Color("989A9D"))
                                    }
                                }
                                NavigationLink {
                                    Bottom_Navigation().navigationBarBackButtonHidden(true)
                                } label: {
                                    VStack{
                                            Text("Done")
                                            .font(.custom("STC Bold", size: 16))
                                            .foregroundColor(.white)
                                            .frame(width: 244,height: 50)
                                            .background(Color("F27D00"))
                                            .cornerRadius(3)
                                        
                                    }
                                }

                               
                            }
                        }.padding(.bottom,327)
                  
            }
        }
    }
}

struct Order_Accepted_Previews: PreviewProvider {
    static var previews: some View {
        Order_Accepted()
    }
}
