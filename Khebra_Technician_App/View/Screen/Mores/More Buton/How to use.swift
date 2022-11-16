//
//  How to use.swift
//  Khebra_Technician_App
//
//  Created by Apple1 on 23/11/2022.
//

import SwiftUI

struct How_to_use: View {
    var body: some View {
        ZStack{
            Color("FAFAFA")
                .edgesIgnoringSafeArea(.all)
            VStack{
                VStack(spacing:50){
                    HStack{
                        Text("Rating factors")
                            .foregroundColor(Color("10275C"))
                            .font(.custom("STC Bold", size:18))
                    }
                    VStack(alignment: .leading,spacing:21){
                        HStack{
                            Text("Clips explaining how to use the app")
                                .font(.custom("STCRegular", size: 16))
                        }
                        VStack(spacing:19){
                            VStack(spacing:10){
                                HStack{
                                    RoundedRectangle(cornerRadius: 1)
                                        .fill(.clear)
                                        .frame(width: 310,height: 75)
                                        .border(Color("B2C1E3"),width: 0.2)
                                        .background(.white)
                                        .overlay{
                                            HStack(spacing:0){
                                                Image("vedio")
                                                    .resizable()
                                                    .frame(width: 117,height: 65)
                                                    .overlay{
                                                        Image(systemName: "arrowtriangle.forward.circle")
                                                            .resizable()
                                                            .foregroundColor(.white)
                                                            .frame(width: 20,height: 20)
                                                    }
                                                Text("How to receive and process the order")
                                                    .foregroundColor(Color("5A5A5A"))
                                                    .font(.custom("STCRegular", size: 14))
                                                    .frame(width: 159,height: 38)
                                                Spacer()
                                            }.padding(.leading,5)
                                        }
                                }
                                HStack{
                                    RoundedRectangle(cornerRadius: 1)
                                        .fill(.clear)
                                        .frame(width: 310,height: 75)
                                        .border(Color("B2C1E3"),width: 0.2)
                                        .background(.white)
                                        .overlay{
                                            HStack{
                                                Image("vedio1")
                                                    .resizable()
                                                    .frame(width: 117,height: 65)
                                                    .overlay{
                                                        Image(systemName: "arrowtriangle.forward.circle")
                                                            .resizable()
                                                            .foregroundColor(.white)
                                                            .frame(width: 20,height: 20)
                                                    }
                                                Text("Change password")
                                                    .foregroundColor(Color("5A5A5A"))
                                                    .font(.custom("STCRegular", size: 14))
                                                    .frame(width: 120,height: 19)
                                                Spacer()
                                            }.padding(.leading,5)
                                        }
                                }
                            }
                            VStack{
                                HStack{
                                    RoundedRectangle(cornerRadius: 1)
                                        .fill(.clear)
                                        .frame(width: 310,height: 45)
                                        .border(Color("B2C1E3"),width: 0.2)
                                        .background(.white)
                                        .overlay{
                                            HStack{
                                                Text("How do I receive orders?")
                                                    .font(.custom("STCRegular", size: 14))
                                                    .foregroundColor(Color("10275C"))
                                                Spacer()
                                            }.padding(.leading)
                                        }
                                }
                                HStack{
                                    RoundedRectangle(cornerRadius: 1)
                                        .fill(.clear)
                                        .frame(width: 310,height: 45)
                                        .border(Color("B2C1E3"),width: 0.2)
                                        .background(.white)
                                        .overlay{
                                            HStack{
                                                Text("How to issue invoices and send them to the customer?")
                                                    .font(.custom("STCRegular", size: 14))
                                                    .foregroundColor(Color("10275C"))
                                                Spacer()
                                            }.padding(.leading)
                                        }
                                }
                                HStack{
                                    RoundedRectangle(cornerRadius: 1)
                                        .fill(.clear)
                                        .frame(width: 310,height: 45)
                                        .border(Color("B2C1E3"),width: 0.2)
                                        .background(.white)
                                        .overlay{
                                            HStack{
                                                Text("App updates")
                                                    .font(.custom("STCRegular", size: 14))
                                                    .foregroundColor(Color("10275C"))
                                                Spacer()
                                            }.padding(.leading)
                                        }
                                }
                                HStack{
                                    RoundedRectangle(cornerRadius: 1)
                                        .fill(.clear)
                                        .frame(width: 310,height: 45)
                                        .border(Color("B2C1E3"),width: 0.2)
                                        .background(.white)
                                        .overlay{
                                            HStack{
                                                Text("Communicate with customer services")
                                                    .font(.custom("STCRegular", size: 14))
                                                    .foregroundColor(Color("10275C"))
                                                Spacer()
                                            }.padding(.leading)
                                            
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

struct How_to_use_Previews: PreviewProvider {
    static var previews: some View {
        How_to_use()
    }
}
