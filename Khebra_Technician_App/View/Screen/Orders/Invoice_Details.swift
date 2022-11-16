//
//  Invoice_Details.swift
//  Khebra_Technician_App
//
//  Created by Apple1 on 17/11/2022.
//

import SwiftUI

struct Invoice_Details: View {
    @Environment(\.presentationMode) var presentationMode
    @State var Invoice = false
    @State var work:String=""
    @State var cost:String=""
    @State var costDelivery:String=""
    @State var upload:String=""
    @State var isInvoice:Bool=false
    var body: some View {
        ZStack{
            Color("FAFAFA")
                .edgesIgnoringSafeArea(.all)
            ScrollView(showsIndicators: false) {
                VStack{
                    Spacer()
                    VStack(spacing:41){
                        VStack(spacing:43){
                            HStack{
                                Text("Invoice Details")
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
                      
                    }
                    VStack(spacing:40){
                        VStack(spacing:10){
                            VStack(alignment:.leading,spacing: 15){
                                Text("Please enter the work fee without VAT")
                                    .font(.custom("STCRegular", size: 14))
                                    .foregroundColor(Color("5F5E5E"))
                                TextField("0.00", text: $work)
                                    .padding()
                                    .frame(width:310,height: 45)
                                    .background(.white)
                                    .border(Color("B2C1E3"),width: 0.2)
                            }
                            VStack(alignment:.leading,spacing: 15){
                                Text("Please enter the cost of spare parts (if any)")
                                    .font(.custom("STCRegular", size: 14))
                                    .foregroundColor(Color("5F5E5E"))
                                TextField("0.00", text: $work)
                                    .padding()
                                    .frame(width:310,height: 45)
                                    .background(.white)
                                    .border(Color("B2C1E3"),width: 0.2)
                            }
                            VStack(alignment:.leading,spacing: 15){
                                Text("Please enter the cost of spare parts delivery (if any)")
                                    .font(.custom("STCRegular", size: 14))
                                    .foregroundColor(Color("5F5E5E"))
                                TextField("0.00", text: $work)
                                    .padding()
                                    .frame(width:310,height: 45)
                                    .background(.white)
                                    .border(Color("B2C1E3"),width: 0.2)
                            }
                            VStack(alignment:.leading,spacing: 15){
                                Text("Please upload the spare parts invoice")
                                    .font(.custom("STCRegular", size: 14))
                                    .foregroundColor(Color("5F5E5E"))
                                VStack{
                                    Rectangle()
                                        .fill(.clear)
                                        .frame(width: 310,height: 45)
                                        .border(Color("B2C1E3"),width: 0.2)
                                        .background(.white)
                                        .overlay{
                                            HStack {
                                                Image("upload")
                                                    .resizable()
                                                    .frame(width:15.89,height:17.66)
                                                TextField("Upload a file", text: $upload)
                                            }.padding()
                                        }
                                }
                            }
                            
                        }
                            HStack{
                                RoundedRectangle(cornerRadius: 4)
                                    .fill(Color("F27D00"))
                                    .frame(width: 244,height: 50)
                                    .onTapGesture(perform: {
                                        isInvoice.toggle()
                                    })
                                    .overlay{
                                        Text("Send to Customer")
                                            .font(.custom("STC Bold", size: 18))
                                            .foregroundColor(.white)
                                    }
                            }
                    

                        
                    }
                }
            }
            if isInvoice{
                GeometryReader { _ in
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
                                          
                                                VStack{
                                                        Text("Done")
                                                            .font(.custom("STC Bold", size: 16))
                                                            .foregroundColor(.white)
                                                            .frame(width: 244,height: 50)
                                                            .background(Color("F27D00"))
                                                            .cornerRadius(3)
                                                            .onTapGesture {
                                                                isInvoice.toggle()
                                                                self.presentationMode.wrappedValue.dismiss()
                                                            }
                                                    
                                                }
                                        

                                          
                                        }
                                    }.padding(.top,63.92)
                            Spacer()
                              
                        }
                    }
                } 

            }
        }
    }
}

struct Invoice_Details_Previews: PreviewProvider {
    static var previews: some View {
        Invoice_Details()
    }
}
