//
//  New_Order_Card.swift
//  Khebra_Technician_App
//
//  Created by Apple1 on 18/11/2022.
//

import SwiftUI

struct New_Order_Card: View {
    var body: some View {
        HStack{
            RoundedRectangle(cornerRadius: 4)
                .fill(.white)
                .frame(width: 317,height: 103)
                .border(Color("B2C1E3"),width: 0.2)
                .overlay{
                    HStack(spacing:0){
                        VStack(alignment:.leading){
                            VStack(alignment:.leading,spacing:0){
                                HStack(alignment:.top,spacing:147){
                                    HStack{
                                        Text("Order No.")
                                            .font(.custom("STCRegular", size: 14))
                                            .foregroundColor(Color("B2C1E3"))
                                        + Text("#58246")
                                            .font(.custom("STCRegular", size: 14))
                                            .foregroundColor(Color("000000"))
                                        
                                    }.frame(width:109,height: 19)
                                    Image("Plumbing")
                                        .resizable()
                                        .frame(width:44,height: 31)
                                }
                                HStack(spacing:4){
                                    Text("Name")
                                        .font(.custom("STCRegular", size: 14))
                                        .foregroundColor(Color("B2C1E3"))
                                    Text("Mohammed Abed ElAzizi")
                                        .font(.custom("STCRegular", size: 14))
                                        .foregroundColor(Color("000000"))
                                    
                                }.frame(width:198,height: 19)
                            }
                          
                                HStack{
                                    RoundedRectangle(cornerRadius: 0)
                                        .frame(height: 0.3, alignment: .center)
                                        .foregroundColor(Color("B2C1E3"))
                                }
                            HStack(spacing:13.3){
                                HStack{
                                    Image("Plumbings")
                                        .resizable()
                                        .frame(width:12.72,height: 12.71)
                                    Text("Plumbing")
                                        .foregroundColor(Color("B2C1E3"))
                                }
                                HStack{
                                    Image("Distance")
                                        .resizable()
                                        .frame(width:18.13,height: 16.44)
                                    Text("25 KM")
                                        .foregroundColor(Color("B2C1E3"))
                                }
                            }
                           
                        }
                       
                    }.padding(.horizontal,9)
                        .padding(.vertical,10)
                   
//                                        .padding(.leading,12)
                }
        }
    }
}

struct New_Order_Card_Previews: PreviewProvider {
    static var previews: some View {
        New_Order_Card()
    }
}
