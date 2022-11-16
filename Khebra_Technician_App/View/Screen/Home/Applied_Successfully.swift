//
//  Applied_Successfully.swift
//  Khebra_Technician_App
//
//  Created by Apple1 on 17/11/2022.
//

import SwiftUI

struct Applied_Successfully: View {
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
                                        Text("Applied Successfully")
                                            .font(.custom("STC Bold", size: 20))
                                            .foregroundColor(Color("10275C"))
                                    }
                                    HStack{
                                        Text("You have successfully applied for the order. Now the customer will send you the request")
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

struct Applied_Successfully_Previews: PreviewProvider {
    static var previews: some View {
        Applied_Successfully()
    }
}
