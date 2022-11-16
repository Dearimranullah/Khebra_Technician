//
//  More_Component.swift
//  Khebra_Technician_App
//
//  Created by Apple1 on 21/11/2022.
//

import SwiftUI

struct More_Component: View {
    let name:String
    let image:String
    let Width:CGFloat
    let Height:CGFloat
    var body: some View {
        VStack{
            RoundedRectangle(cornerRadius: 10)
                .fill(.clear)
                .frame(width: 155,height: 55)
                .border(Color("B2C1E3"),width: 1)
                .background(.white)
                .overlay{
                    VStack{
                        HStack(spacing:12){
                            Image(image)
                                .resizable()
                                .frame(width: Width,height: Height)
                            
                            Text("\(name)")
                                .font(.custom("STCRegular", size: 16))
                                .foregroundColor(Color("5A5A5A"))
                            Spacer()
                            
                        }.padding(.leading,21.7)
                    }
                    
                }
        }
    }
}

struct More_Component_Previews: PreviewProvider {
    static var previews: some View {
        More_Component(name:"Profile", image: "customer", Width: 13.93, Height: 19.5)
    }
}
