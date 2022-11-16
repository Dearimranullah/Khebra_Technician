//
//  Notification_Component.swift
//  Khebra_Technician_App
//
//  Created by Apple1 on 16/11/2022.
//

import SwiftUI

struct Notification_Component: View {
    @State var image:String
    @State var text1:String
    @State var Width:CGFloat
    @State var Height:CGFloat
    var body: some View {
        VStack{
            RoundedRectangle(cornerRadius: 4)
                .fill(.clear)
                .frame(width: 317,height: 65)
                .border(Color("B2C1E3"),width: 0.2)
                .background(.white)
                .overlay{
                    
                    
                    VStack(alignment:.leading,spacing:2){
                        HStack(spacing:0){
                            RoundedRectangle(cornerRadius: 1)
                                .fill(.clear)
                                .frame(width: 46,height: 45)
                                .background(Color("FAFAFA"))
                                .overlay{
                                    Image(image)
                                        .resizable()
                                        .frame(width: Width,height:Height)
                                        .background(Color("FAFAFA"))
                                    
                                }
                            
                            HStack{
                                 Text(text1)
                                    .font(.custom("STCRegular", size: 13))
                                    .foregroundColor(Color("5A5A5A"))
                                    .multilineTextAlignment(.leading)
                            }
                        }
                        HStack{
                            Spacer()
                            Text("04:30 PM")
                                .font(.custom("STCRegular", size: 12))
                                .foregroundColor(Color("B2C1E3"))
                            
                        }
                        .frame(height: 1)
                        .padding(.trailing,6)
                    }.padding(.leading,10)
                    
                }
            
        }
    }
}

struct Notification_Component_Previews: PreviewProvider {
    static var previews: some View {
        Notification_Component(image: "icon1", text1: "The customer has sent you the order request.", Width: 19, Height: 16)
    }
}
