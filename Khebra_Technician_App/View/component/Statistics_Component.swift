//
//  Statistics_Component.swift
//  Khebra_Technician_App
//
//  Created by Apple1 on 23/11/2022.
//

import SwiftUI

struct Statistics_Component: View {
    @State var text:String
    @State var image:String
    @State var Width:CGFloat
    @State var Height:CGFloat
    @State var number:String
    var body: some View {
        VStack{
            RoundedRectangle(cornerRadius: 0)
                .fill(.clear)
                .frame(width: 165 ,height: 107)
                .border(Color("B2C1E3"),width: 0.2)
                .background(.white)
                .overlay{
                    VStack(spacing:9){
                        Image(image)
                            .resizable()
                            .frame(width:Width,height: Height)
                        VStack(spacing:5){
                            Text(text)
                                .foregroundColor(Color("10275C"))
                                .font(.custom("STCRegular", size: 13))
                            Text(number)
                                .font(.custom("STC Bold", size: 16))
                                .foregroundColor(Color("10275C"))
                        }
                    }.padding(.top,5)
                }
            
        }
    }
}

struct Statistics_Component_Previews: PreviewProvider {
    static var previews: some View {
        Statistics_Component(text: "Total Orders", image: "Plumbing", Width: 44, Height: 31, number: "435")
    }
}
