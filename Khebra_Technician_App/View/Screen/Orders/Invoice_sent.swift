//
//  Invoice_sent.swift
//  Khebra_Technician_App
//
//  Created by Apple1 on 21/11/2022.
//

import SwiftUI

struct Invoice_sent: View {
    var body: some View {
        ZStack{
            Color("FAFAFA")
                .edgesIgnoringSafeArea(.all)
            VStack{
                        VStack(spacing:40.75){
                            VStack{
                                HStack{
                                    Image("Done")
                                        .resizable()
                                        .frame(width: 146.96,height: 150)
                                }
                            }
                            
                            VStack(spacing:42){
                                VStack(spacing:0){
                                    HStack{
                                        Text("Invoice sent")
                                            .font(.custom("STC Bold", size: 20))
                                            .foregroundColor(Color("10275C"))
                                    }
                                    HStack{
                                        Text("Invoice has been sent to the customer. You will get the notification when the customer accepts or rejects.")
                                            .frame(width:258,height: 63)
                                            .font(.custom("STCRegular", size: 14))
                                            .multilineTextAlignment(.center)
                                            .foregroundColor(Color("989A9D"))
                                    }
                                }
                                NavigationLink {
                                    New_Order_Details()
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
                        }.padding(.top,63.92)
                Spacer()
                  
            }
        }
    }
}

struct Invoice_sent_Previews: PreviewProvider {
    static var previews: some View {
        Invoice_sent()
    }
}
