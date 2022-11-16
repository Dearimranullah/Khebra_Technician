//
//  New_Invoice.swift
//  Khebra_Technician_App
//
//  Created by Apple1 on 24/11/2022.
//

import SwiftUI

struct New_Invoice: View {
    @Environment(\.presentationMode) var presentationMode
    @State var username:String=""
    var body: some View {
        ZStack{
            Color("FAFAFA")
                .edgesIgnoringSafeArea(.all)
            ScrollView(showsIndicators: false){
                VStack(spacing:24){
                    VStack{
                        Text("New Invoice")
                            .foregroundColor(Color("10275C"))
                            .font(.custom("STC Bold", size:18))
                    }
                    VStack(spacing:50){
                        VStack(alignment:.leading,spacing:10){
                            VStack(spacing:13){
                                VStack(alignment:.leading,spacing: 12){
                                    HStack{
                                        Image("name")
                                            .resizable()
                                            .frame(width: 13.93,height: 19.5)
                                        Text("Name")
                                            .font(.custom("STCRegular", size: 16))
                                            .foregroundColor(Color("5F5E5E"))
                                    }
                                    TextField("Mohammed Abed ElAzizi", text: $username)
                                        .padding()
                                        .frame(width: 310,height: 45)
                                        .background(.white)
                                        .border(Color("B2C1E3"),width: 0.2)
                                }
                                VStack(alignment:.leading,spacing: 12){
                                    HStack{
                                        Image("Plumbings")
                                            .resizable()
                                            .frame(width: 16.88,height: 16.87)
                                        Text("Service")
                                            .font(.custom("STCRegular", size: 16))
                                            .foregroundColor(Color("5F5E5E"))
                                    }
                                    HStack{
                                        Spacer()
                                      Image(systemName: "chevron.down")
                                            .resizable()
                                            .frame(width: 12,height: 7)
                                            .foregroundColor(Color("10275C"))
                                            .bold()
                                        
                    
                                    }.padding()
                                    .frame(width: 310,height: 45)
                                    .border(Color("B2C1E3"),width: 0.2)
                                    .background(.white)
                                }
                                VStack(alignment:.leading,spacing: 12){
                                    HStack{
                                        Image("Mobile No.")
                                            .resizable()
                                            .frame(width: 14,height: 22)
                                        Text("Mobile No.")
                                            .font(.custom("STCRegular", size: 14))
                                            .foregroundColor(Color("5F5E5E"))
                                    }
                                    HStack{
                                        Text("+966")
                                            .foregroundColor(Color("3A559F"))
                                            .font(.custom("STCRegular", size: 14))
                                            .padding(.leading,16)
                                        Divider()
                                        TextField("", text: $username)
                                        
                                        
                                        Image("checkmark")
                                            .resizable()
                                            .frame(width: 20,height: 20)
                                            .padding(.trailing,12)
                                    }
                                    .frame(width: 310,height: 45)
                                    .border(Color("B2C1E3"),width: 0.2)
                                    .background(.white)
                                }
                                VStack(alignment:.leading,spacing: 12){
                                    HStack{
                                        Image("dollor")
                                            .resizable()
                                            .frame(width: 18,height: 18)
                                        Text("Hand fare without VAT")
                                            .font(.custom("STCRegular", size: 14))
                                            .foregroundColor(Color("5F5E5E"))
                                    }
                                    HStack{
                                        TextField("", text: $username)
                                            .padding()
                                    }
                                    .frame(width: 310,height: 45)
                                    .border(Color("B2C1E3"),width: 0.2)
                                    .background(.white)
                                }
                            }
                            VStack(alignment: .leading){
                                VStack(alignment:.leading,spacing: 12){
                                    HStack{
                                        Image("invoice1")
                                            .resizable()
                                            .frame(width: 17.7,height: 16.96)
                                        Text("Spare parts invoice")
                                            .font(.custom("STCRegular", size: 14))
                                            .foregroundColor(Color("5F5E5E"))
                                    }
                                    TextField("", text: $username)
                                        .padding()
                                        .frame(width: 310,height: 45)
                                        .background(.white)
                                        .border(Color("B2C1E3"),width: 0.2)
                                }
                                VStack(alignment:.leading,spacing: 12){
                                    HStack{
                                        Image("invoice1")
                                            .resizable()
                                            .frame(width: 17.7,height: 16.96)
                                        Text("Spare parts invoice (Photo)")
                                            .font(.custom("STCRegular", size: 14))
                                            .foregroundColor(Color("5F5E5E"))
                                    }
                                    HStack{
                                        Image("upload")
                                            .resizable()
                                            .frame(width: 14.68,height: 16.31)
                                        TextField("Upload photo ID", text: $username)
                                        
                                    }
                                    .padding()
                                    .frame(width: 310,height: 45)
                                    .border(Color("B2C1E3"),width: 0.2)
                                    .background(.white)
                                }
                                
                            }
                        }
                            HStack{
                                RoundedRectangle(cornerRadius: 4)
                                    .fill(Color("F27D00"))
                                    .frame(width: 244,height: 50)
                                        .onTapGesture {
                                            presentationMode.wrappedValue.dismiss()
                                        }
                                    .overlay{
                                        Text("Issuing an invoice")
                                            .font(.custom("STC Bold", size: 18))
                                            .foregroundColor(.white)
                                    }
                            }
                      
                       
                        
                    }
                    
                }
            }
        }
    }
}

struct New_Invoice_Previews: PreviewProvider {
    static var previews: some View {
        New_Invoice()
    }
}
