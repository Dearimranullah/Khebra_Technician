//
//  Setting.swift
//  Khebra_Technician_App
//
//  Created by Apple1 on 23/11/2022.
//

import SwiftUI

struct Setting: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack{
            Color("FAFAFA")
                .edgesIgnoringSafeArea(.all)
            VStack{
                VStack(spacing:50){
                    HStack{
                        Text("Setting")
                            .foregroundColor(Color("10275C"))
                            .font(.custom("STC Bold", size:18))
                    }
                    VStack{
                        VStack(spacing:50){
                            VStack(spacing:16){
                                VStack(alignment: .leading){
                                    HStack{
                                        Text("Date of Birth")
                                            .foregroundColor(Color("5A5A5A"))
                                            .font(.custom("STCRegular", size: 14))
                                        
                                    }
                                    
                                    VStack{
                                        RoundedRectangle(cornerRadius: 1)
                                            .fill(.clear)
                                            .frame(width: 310,height: 45)
                                            .border(Color("B2C1E3"),width: 0.2)
                                            .background(.white)
                                            .overlay{
                                                HStack{
                                                    Spacer()
                                                    Image(systemName: "calendar")
                                                        .resizable()
                                                        .frame(width: 15,height: 15)
                                                        .foregroundColor(Color("B2C1E3"))
                                                }.padding(.trailing)
                                            }
                                    }
                                }
                                VStack(alignment: .leading){
                                    HStack{
                                        Text("City")
                                            .foregroundColor(Color("5A5A5A"))
                                            .font(.custom("STCRegular", size: 14))
                                        
                                    }
                                    
                                    VStack{
                                        RoundedRectangle(cornerRadius: 1)
                                            .fill(.clear)
                                            .frame(width: 310,height: 45)
                                            .border(Color("B2C1E3"),width: 0.2)
                                            .background(.white)
                                            .overlay{
                                                HStack{
                                                    Spacer()
                                                    Image(systemName: "chevron.down")
                                                        .resizable()
                                                        .frame(width: 12,height: 6.93)
                                                        .foregroundColor(Color("B2C1E3"))
                                                }.padding(.trailing)
                                            }
                                    }
                                }
                            }
                            VStack(spacing:23){
                                    HStack{
                                        RoundedRectangle(cornerRadius: 4)
                                            .fill(Color("F27D00"))
                                            .frame(width: 244,height: 50)
                                            .onTapGesture {
                                                self.presentationMode.wrappedValue.dismiss()
                                            }
                                            .overlay{
                                                Text("Save")
                                                    .font(.custom("STC Bold", size: 18))
                                                    .foregroundColor(.white)
                                            }
                                    }
                                VStack{
                                    VStack{
                                        RoundedRectangle(cornerRadius: 1)
                                            .fill(.clear)
                                            .frame(width: 310,height: 45)
                                            .border(Color("B2C1E3"),width: 0.2)
                                            .background(.white)
                                            .overlay{
                                                HStack{
                                                    Text("Language")
                                                        .font(.custom("STCRegular", size: 16))
                                                    Spacer()
                                                    Text("EN")
                                                        .font(.custom("STCRegular", size: 12))
                                                        .foregroundColor(Color("B2C1E3"))
                                                }.padding(.horizontal)
                                            }
                                    }
                                    VStack{
                                        RoundedRectangle(cornerRadius: 1)
                                            .fill(.clear)
                                            .frame(width: 310,height: 45)
                                            .border(Color("B2C1E3"),width: 0.2)
                                            .background(.white)
                                            .overlay{
                                                HStack{
                                                    Text("Change password")
                                                        .font(.custom("STCRegular", size: 16))
                                                    Spacer()
                                                    Image(systemName: "chevron.forward")
                                                        .resizable()
                                                        .frame(width: 6.93,height: 12)
                                                        .foregroundColor(Color("B2C1E3"))
                                                }.padding(.horizontal)
                                            }
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

struct Setting_Previews: PreviewProvider {
    static var previews: some View {
        Setting()
    }
}
