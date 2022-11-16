//
//  Completed_Card.swift
//  Khebra_Technician_App
//
//  Created by Apple1 on 18/11/2022.
//

import SwiftUI

struct Completed_Card: View {
    @State var string:String
    @State var Width:CGFloat
    @State var Height:CGFloat
    var body: some View {
        HStack{
            RoundedRectangle(cornerRadius: 4)
                .fill(.white)
                .frame(width: 317,height: 120)
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
                                    Image("Address")
                                        .resizable()
                                        .frame(width:12,height: 15)
                                    Text("As Sahafah, Olaya St. 6531, 3059 Riyadh...")
                                        .font(.custom("STCRegular", size: 14))
                                        .foregroundColor(Color("5A5A5A"))
                                }.padding(.leading,4)
                            HStack(spacing:13.3){
                                HStack{
                                    Image("Appintment")
                                        .resizable()
                                        .frame(width:13,height: 14)
                                    Text("6/9/2022")
                                        .font(.custom("STCRegular", size: 14))
                                        .foregroundColor(Color("B2C1E3"))
                                }
                                Spacer()
                                HStack{
                                    RoundedRectangle(cornerRadius: 2)
                                        .fill(.clear)
                                        .frame(width:Width,height: Height)
                                        .border(Color("F27D00"),width: 0.5)
                                        .overlay{
                                            Text(string)
                                                .foregroundColor(Color("F27D00"))
//                                                .font(.system(size: 13))
                                                .font(.custom("STCRegular", size: 13))
                                        }
                                }
                            }.padding(.leading,4)
                           
                        }
                       
                    }.padding(.horizontal,9)
                        .padding(.vertical,10)
                   
//                                        .padding(.leading,12)
                }
        }
    }
}

struct Completed_Card_Previews: PreviewProvider {
    static var previews: some View {
        Completed_Card(string: "Paid Cash", Width: 93, Height: 25)
    }
}
