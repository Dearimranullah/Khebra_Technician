//
//  Recharge.swift
//  Khebra_Technician_App
//
//  Created by Apple1 on 22/11/2022.
//

import SwiftUI

struct Recharge: View {
    @State var amount:String=""
    @State var number:String=""
    @State var  checked:Bool=false
    var body: some View {
        ZStack{
            Color("FAFAFA")
                .edgesIgnoringSafeArea(.all)
            VStack(alignment: .leading){
                VStack(spacing:50){
                    HStack{
                        Text("Recharge")
                            .font(.custom("STC Bold", size:18))
                            .foregroundColor(Color("10275C"))
                    }
                    VStack{
                        VStack(alignment:.leading,spacing: 5){
                            Text("You can recharge your balance now via Stc Pay")
                                .font(.custom("STCRegular", size: 14))
                            HStack(spacing:0){
                                Text("or a mada card")
                                    .font(.custom("STCRegular", size: 16))
                                Image("mada")
                                    .resizable()
                                    .frame(width: 48,height: 16)
                            }
                               
                        }
                        VStack(spacing:64){
                            VStack(alignment: .leading,spacing: 16){
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
                                    HStack(spacing:0){
                                        Text("Mada card recharge")
                                            .font(.custom("STCRegular", size: 14))
                                            .foregroundColor(Color("5A5A5A"))
                                        Image("mada")
                                            .resizable()
                                            .frame(width: 48,height: 16)
                                    }
                                }
                                HStack{
                                    RoundedRectangle(cornerRadius: 0)
                                        .fill(.white)
                                        .frame(width: 91,height: 45)
                                        .border(Color("B2C1E3"),width: 0.2)
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
                                HStack{
                                    TextField("0.00", text: $amount)
                                        .padding()
                                        .frame(width: 310,height: 45)
                                        .background(.white)
                                        .border(Color("B2C1E3"),width: 0.2)
                                }
                            }
                            VStack(spacing:19){
                                HStack{
                                    RoundedRectangle(cornerRadius: 4)
                                        .fill(Color("F27D00"))
                                        .frame(width: 244,height: 50)
                                        .overlay{
                                            Text("Pay (500 SAR)")
                                                .font(.custom("STC Bold", size: 16))
                                                .foregroundColor(.white)
                                        }
                                }
                                VStack{
                                    Rectangle()
                                        .fill(.clear)
                                        .frame(width:339,height: 154)
                                        .border(Color("B2C1E3"))
                                        .background(.white)
                                        .overlay{
                                            VStack(alignment: .leading,spacing: 11){
                                                Text("To transfer to an account of the khebra app")
                                                    .font(.custom("STCRegular", size: 16))
                                                
                                                VStack(spacing:19){
                                                    VStack(alignment: .leading,spacing: 3){
                                                        HStack(spacing:100){
                                                            Text("National Bank account")
                                                                .foregroundColor(Color("10275C"))
                                                                .font(.custom("STCRegular", size: 14))
                                                            Text("20573065")
                                                                .foregroundColor(Color("5A5A5A"))
                                                                .font(.custom("STCRegular", size: 14))
                                                        }
                                                        Text("SA94800005426080521468975")
                                                            .foregroundColor(Color("5A5A5A"))
                                                            .font(.custom("STCRegular", size: 14))
                                                        
                                                    }
                                                    VStack(alignment: .leading,spacing: 3){
                                                        HStack(spacing:100){
                                                            Text("Al Rajhi bank account")
                                                                .foregroundColor(Color("10275C"))
                                                                .font(.custom("STCRegular", size: 14))
                                                            Text("20573065")
                                                                .foregroundColor(Color("5A5A5A"))
                                                                .font(.custom("STCRegular", size: 14))
                                                        }
                                                        Text("SA94800005426080521468975")
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
              
                
            }
        }
    }
}

struct Recharge_Previews: PreviewProvider {
    static var previews: some View {
        Recharge()
    }
}
