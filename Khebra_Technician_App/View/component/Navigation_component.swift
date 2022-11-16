//
//  Navigation_component.swift
//  Khebra_Technician_App
//
//  Created by Apple1 on 16/11/2022.
//

import SwiftUI

struct Navitofication_component: View {
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
                        HStack(spacing:7){
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
                                    .font(.system(size: 12))
                                    .foregroundColor(Color("5A5A5A"))
                            }
                        }
                        HStack{
                            Spacer()
                            Text("04:30 PM")
                                .font(.system(size: 12))
                                .foregroundColor(Color("B2C1E3"))
                            
                        }
                        .frame(height: 1)
                        .padding(.trailing,6)
                    }.padding(.leading,10)
                    
                }
            
        }
    }
}

struct Navitofication_component_Previews: PreviewProvider {
    static var previews: some View {
        Navitofication_component(image: "icon1", text1: "your balance has been recharged with 80 SAR", Width: 19, Height: 16)
    }
}
