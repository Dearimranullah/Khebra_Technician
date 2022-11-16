//
//  Invoices.swift
//  Khebra_Technician_App
//
//  Created by Apple1 on 24/11/2022.
//

import SwiftUI

struct Invoices: View {
    var body: some View {
        ZStack{
            Color("FAFAFA")
                .edgesIgnoringSafeArea(.all)
            VStack{
                VStack(spacing:100){
                    VStack(spacing:60){
                        HStack{
                            Text("Connect Us")
                                .foregroundColor(Color("10275C"))
                                .font(.custom("STC Bold", size:18))
                        }
                        NavigationLink {
                            New_Invoice()
                        } label: {
                            HStack{
                                RoundedRectangle(cornerRadius: 4)
                                    .fill(Color("F27D00"))
                                    .frame(width: 244,height: 50)
                                    .overlay{
                                        Text("New Invoice")
                                            .font(.custom("STC Bold", size: 16))
                                            .foregroundColor(.white)
                                    }
                            }
                        }

                    }
                    VStack(alignment: .leading,spacing: 16){
                        HStack{
                            Text("My Invoices list")
                                .font(.custom("STC Bold", size:18))
                                .foregroundColor(Color("10275C"))
                        }
                        VStack{
                            RoundedRectangle(cornerRadius: 2)
                                .fill(.clear)
                                .frame(width: 339,height: 319)
                                .border(Color("B2C1E3"),width: 0.2)
                                .background(.white)
                                .overlay{
                                    VStack(alignment:.leading,spacing:10){
                                        VStack{
                                            HStack{
                                                Text("Invoice No.")
                                                    .foregroundColor(Color("10275C"))
                                                    .font(.custom("STCRegular", size: 12))
                                                Text("Date & time")
                                                    .foregroundColor(Color("10275C"))
                                                    .font(.custom("STCRegular", size: 12))
                                                Text("Customer")
                                                    .foregroundColor(Color("10275C"))
                                                    .font(.custom("STCRegular", size: 12))
                                                Text("Amount")
                                                    .foregroundColor(Color("10275C"))
                                                    .font(.custom("STCRegular", size: 12))
                                            }
                                        }
                                        VStack(spacing:10){
                                            Divider()
                                            HStack(alignment: .top,spacing: 12){
                                                Text("#292030")
                                                    .font(.custom("STCRegular", size: 14))
                                                    .foregroundColor(Color("464646"))
                                                HStack(alignment: .top,spacing:4){
                                                    Text("20/06/2022 2:30 PM")
                                                        .font(.custom("STCRegular", size: 14))
                                                        .foregroundColor(Color("464646"))
                                                        .frame(width:71,height: 35)
                                                    Text("Ali Ahmed 500")
                                                        .font(.custom("STCRegular", size: 14))
                                                        .foregroundColor(Color("464646"))
                                                }
                                                RoundedRectangle(cornerRadius: 2)
                                                    .fill(.orange)
                                                    .frame(width: 70,height: 37)
                                                    .overlay{
                                                        Text("Print the Invoice")
                                                            .foregroundColor(.white)
                                                            .font(.custom("STCRegular", size: 14))
                                                            .frame(width:55,height: 34)
                                                            .multilineTextAlignment(.center)
                                                        
                                                    }
                                                
                                            }
                                            Divider()
                                        }
                                        VStack(spacing:10){
                                            HStack(alignment: .top,spacing: 12){
                                                Text("#292030")
                                                    .font(.custom("STCRegular", size: 14))
                                                    .foregroundColor(Color("464646"))
                                                HStack(alignment: .top,spacing:4){
                                                    Text("20/06/2022 2:30 PM")
                                                        .font(.custom("STCRegular", size: 14))
                                                        .foregroundColor(Color("464646"))
                                                        .frame(width:71,height: 35)
                                                    Text("Ali Ahmed 500")
                                                        .font(.custom("STCRegular", size: 14))
                                                        .foregroundColor(Color("464646"))
                                                }
                                                RoundedRectangle(cornerRadius: 2)
                                                    .fill(.orange)
                                                    .frame(width: 70,height: 37)
                                                    .overlay{
                                                        Text("Print the Invoice")
                                                            .foregroundColor(.white)
                                                            .font(.custom("STCRegular", size: 14))
                                                            .frame(width:55,height: 34)
                                                            .multilineTextAlignment(.center)
                                                        
                                                    }
                                                
                                            }
                                            Divider()
                                        }
                                        VStack(spacing:10){
                                            HStack(alignment: .top,spacing: 12){
                                                Text("#292030")
                                                    .font(.custom("STCRegular", size: 14))
                                                    .foregroundColor(Color("464646"))
                                                HStack(alignment: .top,spacing:4){
                                                    Text("20/06/2022 2:30 PM")
                                                        .font(.custom("STCRegular", size: 14))
                                                        .foregroundColor(Color("464646"))
                                                        .frame(width:71,height: 35)
                                                    Text("Ali Ahmed 500")
                                                        .font(.custom("STCRegular", size: 14))
                                                        .foregroundColor(Color("464646"))
                                                }
                                                RoundedRectangle(cornerRadius: 2)
                                                    .fill(.orange)
                                                    .frame(width: 70,height: 37)
                                                    .overlay{
                                                        Text("Print the Invoice")
                                                            .foregroundColor(.white)
                                                            .font(.custom("STCRegular", size: 14))
                                                            .frame(width:55,height: 34)
                                                            .multilineTextAlignment(.center)
                                                        
                                                    }
                                                
                                            }
                                            Divider()
                                        }
                                        VStack(spacing:10){
                                            HStack(alignment: .top,spacing: 12){
                                                Text("#292030")
                                                    .font(.custom("STCRegular", size: 14))
                                                    .foregroundColor(Color("464646"))
                                                HStack(alignment: .top,spacing:4){
                                                    Text("20/06/2022 2:30 PM")
                                                        .font(.custom("STCRegular", size: 14))
                                                        .foregroundColor(Color("464646"))
                                                        .frame(width:71,height: 35)
                                                    Text("Ali Ahmed 500")
                                                        .font(.custom("STCRegular", size: 14))
                                                        .foregroundColor(Color("464646"))
                                                }
                                                RoundedRectangle(cornerRadius: 2)
                                                    .fill(.orange)
                                                    .frame(width: 70,height: 37)
                                                    .overlay{
                                                        Text("Print the Invoice")
                                                            .foregroundColor(.white)
                                                            .font(.custom("STCRegular", size: 14))
                                                            .frame(width:55,height: 34)
                                                            .multilineTextAlignment(.center)
                                                        
                                                    }
                                                
                                            }
                                            Divider()
                                        }
                                        VStack{
                                            HStack(alignment: .top,spacing: 12){
                                                Text("#292030")
                                                    .font(.custom("STCRegular", size: 14))
                                                    .foregroundColor(Color("464646"))
                                                HStack(alignment: .top,spacing:4){
                                                    Text("20/06/2022 2:30 PM")
                                                        .font(.custom("STCRegular", size: 14))
                                                        .foregroundColor(Color("464646"))
                                                        .frame(width:71,height: 35)
                                                    Text("Ali Ahmed 500")
                                                        .font(.custom("STCRegular", size: 14))
                                                        .foregroundColor(Color("464646"))
                                                }
                                                RoundedRectangle(cornerRadius: 2)
                                                    .fill(.orange)
                                                    .frame(width: 70,height: 37)
                                                    .overlay{
                                                        Text("Print the Invoice")
                                                            .foregroundColor(.white)
                                                            .font(.custom("STCRegular", size: 14))
                                                            .frame(width:55,height: 34)
                                                            .multilineTextAlignment(.center)
                                                        
                                                    }
                                                
                                            }
                                            
                                        }
                                    }.padding(.horizontal,10)
                                }
                        }
                    }
                }
                Spacer()
            }
        }
    }
}

struct Invoices_Previews: PreviewProvider {
    static var previews: some View {
        Invoices()
    }
}
