//
//  Work_Controls.swift
//  Khebra_Technician_App
//
//  Created by Apple1 on 23/11/2022.
//

import SwiftUI
struct Work_Controls: View {
    var body: some View {
        ZStack{
            Color("FAFAFA")
                .edgesIgnoringSafeArea(.all)
            VStack{
                VStack(spacing:48){
                    HStack{
                        Text("Work Controls")
                            .foregroundColor(Color("10275C"))
                            .font(.custom("STC Bold", size:18))
                    }
                    VStack(spacing:16){
                        VStack(alignment: .leading,spacing: 15){
                            Text("Incestives")
                                .foregroundColor(Color("10275C"))
                                .font(.custom("STC Bold", size:16))
                            VStack{
                                RoundedRectangle(cornerRadius: 1)
                                    .fill(.clear)
                                    .frame(width: 345,height: 164)
                                    .border(Color("B2C1E3"),width: 0.2)
                                    .background(.white)
                                    .overlay{
                                        VStack(spacing:0){
                                            HStack{
                                                Text("Completed orders")
                                                    .font(.custom("STCRegular", size: 14))
                                                    .foregroundColor(Color("5A5A5A"))
                                                Spacer()
                                                Divider()
                                                Text("Get 10 SAR")
                                                    .font(.custom("STCRegular", size: 14))
                                                    .foregroundColor(Color("5A5A5A"))
                                            }.padding(.horizontal,10)
                                            Divider()
                                            HStack{
                                                Text("Completed orders")
                                                    .font(.custom("STCRegular", size: 14))
                                                    .foregroundColor(Color("5A5A5A"))
                                                Spacer()
                                                Divider()
                                                Text("Get 10 SAR")
                                                    .font(.custom("STCRegular", size: 14))
                                                    .foregroundColor(Color("5A5A5A"))
                                            }.padding(.horizontal,10)
                                            Divider()
                                            HStack{
                                                Text("Completed orders")
                                                    .font(.custom("STCRegular", size: 14))
                                                    .foregroundColor(Color("5A5A5A"))
                                                Spacer()
                                                Divider()
                                                Text("Get 10 SAR")
                                                    .font(.custom("STCRegular", size: 14))
                                                    .foregroundColor(Color("5A5A5A"))
                                            }.padding(.horizontal,10)
                                            Divider()
                                            HStack{
                                                Text("Completed orders")
                                                    .font(.custom("STCRegular", size: 14))
                                                    .foregroundColor(Color("5A5A5A"))
                                                Spacer()
                                                Divider()
                                                Text("Get 10 SAR")
                                                    .font(.custom("STCRegular", size: 14))
                                                    .foregroundColor(Color("5A5A5A"))
                                            }.padding(.horizontal,10)
                                            Divider()
                                            HStack{
                                                Text("Completed orders")
                                                    .font(.custom("STCRegular", size: 14))
                                                    .foregroundColor(Color("5A5A5A"))
                                                Spacer()
                                                Divider()
                                                Text("Get 10 SAR")
                                                    .font(.custom("STCRegular", size: 14))
                                                    .foregroundColor(Color("5A5A5A"))
                                            }.padding(.horizontal,10)
                                        }
                                    }
                            }
                        }
                        VStack(alignment: .leading,spacing: 15){
                            Text("Penalties")
                                .foregroundColor(Color("10275C"))
                                .font(.custom("STC Bold", size:16))
                            VStack{
                                RoundedRectangle(cornerRadius: 1)
                                    .fill(.clear)
                                    .frame(width: 345,height: 280)
                                    .border(Color("B2C1E3"),width: 0.2)
                                    .background(.white)
                                    .overlay{
                                        VStack(spacing:0){
                                            HStack{
                                                Text("Request from the customer to cancel the order")
                                                    .frame(width:185,height: 35)
                                                    .font(.custom("STCRegular", size: 14))
                                                    .foregroundColor(Color("5A5A5A"))
                                                Spacer()
                                                Divider()
                                                Text("Suspend the account for one day")
                                                    .frame(width: 135,height: 35)
                                                    .font(.custom("STCRegular", size: 14))
                                                    .foregroundColor(Color("5A5A5A"))
                                            }.padding(.leading,8)
                                            Divider()
                                            HStack{
                                                Text("Low rating")
                                                    .font(.custom("STCRegular", size: 14))
                                                    .foregroundColor(Color("5A5A5A"))
                                                Spacer()
                                                Divider()
                                                Text("Suspend the account for one day")
                                                    .frame(width: 135,height: 35)
                                                    .font(.custom("STCRegular", size: 14))
                                                    .foregroundColor(Color("5A5A5A"))
                                            }.padding(.leading,8)
                                            Divider()
                                            HStack{
                                                Text("Various cancellation rates")
                                                    .font(.custom("STCRegular", size: 14))
                                                    .foregroundColor(Color("5A5A5A"))
                                                Spacer()
                                                Divider()
                                                Text("Suspend the account for one day")
                                                    .frame(width: 135,height: 35)
                                                    .font(.custom("STCRegular", size: 14))
                                                    .foregroundColor(Color("5A5A5A"))
                                            }.padding(.leading,8)
                                            Divider()
                                            HStack{
                                                Text("Arrived late")
                                                    .font(.custom("STCRegular", size: 14))
                                                    .foregroundColor(Color("5A5A5A"))
                                                Spacer()
                                                Divider()
                                                Text("Suspend the account for one day")
                                                    .frame(width: 135,height: 35)
                                                    .font(.custom("STCRegular", size: 14))
                                                    .foregroundColor(Color("5A5A5A"))
                                            }.padding(.leading,8)
                                            Divider()
                                            HStack{
                                                Text("High price")
                                                    .font(.custom("STCRegular", size: 14))
                                                    .foregroundColor(Color("5A5A5A"))
                                                Spacer()
                                                Divider()
                                                Text("Suspend the account for one day")
                                                    .frame(width: 135,height: 35)
                                                    .font(.custom("STCRegular", size: 14))
                                                    .foregroundColor(Color("5A5A5A"))
                                            }.padding(.leading,8)
                                        }
                                    }
                            }
                        }
                        
                    }
                }
                Spacer()
            }
        }
    }
}

struct Work_Controls_Previews: PreviewProvider {
    static var previews: some View {
        Work_Controls()
    }
}
