//
//  Income.swift
//  Khebra_Technician_App
//
//  Created by Apple1 on 22/11/2022.
//

import SwiftUI

struct Income: View {
    @Environment(\.presentationMode) var presentationMode
    @State var checked:Bool=false
    @State var number:String=""
    @State var amount:String=""
    var body: some View {
        ZStack{
            Color("FAFAFA")
                .edgesIgnoringSafeArea(.all)
            VStack{
                VStack(spacing:75){
                    VStack{
                        HStack{
                            Text("Income")
                                .font(.custom("STC Bold", size:18))
                                .foregroundColor(Color("10275C"))
                        }
                        VStack(alignment: .leading,spacing: 10){
                            VStack(alignment: .leading,spacing: 16){
                                VStack(spacing:25){
                                    HStack{
                                        RoundedRectangle(cornerRadius: 0)
                                            .fill(.clear)
                                            .frame(width:317,height: 50)
                                            .border(Color("B2C1E3"),width: 0.2)
                                            .background(.white)
                                            .overlay{
                                                HStack(spacing:85){
                                                    Text("Your current income is:")
                                                        .font(.custom("STCRegular", size: 14))
                                                    Text("0.00 SAR")
                                                        .foregroundColor(Color("F27D00"))
                                                        .font(.custom("STCRegular", size: 16))
                                                }
                                            }
                                    }
                                    HStack{
                                        Text("You can now withdraw your income through STC Pay")
                                            .font(.custom("STCRegular", size: 14))
                                    }
                                }
                                HStack{
                                    RoundedRectangle(cornerRadius: 0)
                                        .fill(.clear)
                                        .frame(width: 91,height: 45)
                                        .border(Color("B2C1E3"),width: 0.2)
                                        .background(.white)
                                        .overlay{
                                            Image("STC")
                                                .resizable()
                                                .frame(width: 53,height: 16)
                                        }
                                }
                                HStack{
                                    Text("Please enter the mobile number")
                                        .font(.custom("STCRegular", size: 14))
                                }
                                HStack{
                                    Image("flag")
                                        .resizable()
                                        .frame(width: 34,height: 22)
                                        .padding(.leading,16)
                                    Text("+966")
                                        .foregroundColor(Color("3A559F"))
                                        .font(.custom("STCRegular", size: 14))
                                    Divider()
                                    TextField("", text: $number)
                                }
                                .frame(width: 310,height: 45)
                                .border(Color("B2C1E3"),width: 0.2)
                                .background(.white)
                            }
                            VStack(alignment: .leading,spacing: 16){
                                VStack(alignment: .leading,spacing:14){
                                    HStack{
                                        RoundedRectangle(cornerRadius: 0)
                                            .fill(.white)
                                            .frame(width: 24,height: 24)
                                            .border(Color("B2C1E3"),width: 0.2)
                                            .overlay{
                                                Image(systemName: checked ? "checkmark" : "")
                                                    .resizable()
                                                    .frame(width: 15,height: 10)
                                                    .foregroundColor(checked ? Color(UIColor.orange) : Color.white)
                                                    .onTapGesture {
                                                        self.checked.toggle()
                                                    }
                                            }
                                        Text("Recharge using another mobile number")
                                            .font(.custom("STCRegular", size: 14))
                                            .foregroundColor(Color("5A5A5A"))
                                    }
                                    HStack{
                                        Text("Please enter the amount (SAR)")
                                            .font(.custom("STCRegular", size: 14))
                                    }
                                }
                                HStack{
                                    TextField("0.00", text: $amount)
                                        .padding()
                                        .frame(width: 310,height: 45)
                                        .background(.white)
                                        .border(Color("B2C1E3"),width: 0.2)
                                }
                                HStack{
                                    Text("Please choose:")
                                        .font(.custom("STCRegular", size: 14))
                                }
                                VStack(spacing:10){
                                    HStack{
                                        RoundedRectangle(cornerRadius: 0)
                                            .fill(.white)
                                            .frame(width: 24,height: 24)
                                            .border(Color("B2C1E3"),width: 0.2)
                                            .overlay{
                                                Image(systemName: checked ? "checkmark" : "")
                                                    .resizable()
                                                    .frame(width: 15,height: 10)
                                                    .foregroundColor(checked ? Color(UIColor.orange) : Color.white)
                                                    .onTapGesture {
                                                        self.checked.toggle()
                                                    }
                                            }
                                        Text("Transfer the amount to Stc Pay")
                                            .font(.custom("STCRegular", size: 14))
                                            .foregroundColor(Color("5A5A5A"))
                                    }
                                    HStack{
                                        RoundedRectangle(cornerRadius: 0)
                                            .fill(.white)
                                            .frame(width: 24,height: 24)
                                            .border(Color("B2C1E3"),width: 0.2)
                                            .overlay{
                                                Image(systemName: checked ? "checkmark" : "")
                                                    .resizable()
                                                    .frame(width: 15,height: 10)
                                                    .foregroundColor(checked ? Color(UIColor.orange) : Color.white)
                                                    .onTapGesture {
                                                        self.checked.toggle()
                                                    }
                                            }
                                        Text("Transfer the amount to Stc Pay")
                                            .font(.custom("STCRegular", size: 14))
                                            .foregroundColor(Color("5A5A5A"))
                                    }
                                }
                            }
                        }
                    }
                        HStack{
                            RoundedRectangle(cornerRadius: 4)
                                .fill(Color("F27D00"))
                                .frame(width: 244,height: 50)
                                .onTapGesture(perform: {
                                    self.presentationMode.wrappedValue.dismiss()
                                        })
                                .overlay{
                                    Text("Accept")
                                        .font(.custom("STC Bold", size: 18))
                                        .foregroundColor(.white)
                                }
                        }
                    

                   
                }
                Spacer()
            }
        }
    }
}

struct Income_Previews: PreviewProvider {
    static var previews: some View {
        Income()
    }
}
