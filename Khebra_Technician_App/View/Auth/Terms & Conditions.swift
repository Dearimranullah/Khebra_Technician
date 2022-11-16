//
//  Terms & Conditions.swift
//  Khebra_Technician_App
//
//  Created by Apple1 on 17/11/2022.
//

import SwiftUI

struct Terms___Conditions: View {
    var body: some View {
        ZStack{
            Color("FAFAFA")
                .edgesIgnoringSafeArea(.all)
            VStack{
                Spacer()
                VStack(spacing:24.67){
                    HStack{
                        Text("Terms & Conditions")
                            .foregroundColor(Color("10275C"))
                            .font(.custom("STC Bold", size: 18))
                    }
                    VStack(spacing:19){
                        VStack(alignment:.leading,spacing: 0){
                            HStack{
                                Text("Lorem ipsum dolor")
                                    .font(.custom("STC Bold", size: 16))
                                    .foregroundColor(Color("000000").opacity(0.8))
                            }
                            HStack{
                                Text("Lorem ipsum dolor sit amet, consectetur adipis cing elit. Etiam odio est, laoreet vitae dictum ac, accumsan vitae erat. Nullam et hendrerit nulla, vel dapibus dolor. Aliquam males uada at orci vitae dapibus. Fusce rutrum magna id lacus tristi que, sit amet efficitur ligula maximus.")
                                    .frame(width: 335,height: 92)
                                    .font(.custom("STCRegular", size: 12))
                                    .foregroundColor(Color("000000").opacity(0.6))
                                    .lineSpacing(4)
                            }
                        }
                        VStack(alignment:.leading,spacing: 0){
                            HStack{
                                Text("Lorem ipsum dolor")
                                    .font(.custom("STC Bold", size: 16))
                                    .foregroundColor(Color("000000").opacity(0.8))
                            }
                            HStack{
                                Text("Lorem ipsum dolor sit amet, consectetur adipis cing elit. Etiam odio est, laoreet vitae dictum ac, accumsan vitae erat. Nullam et hendrerit nulla, vel dapibus dolor. Aliquam males uada at orci vitae dapibus. Fusce rutrum magna id lacus tristi que, sit amet efficitur ligula maximus.")
                                    .frame(width: 335,height: 92)
                                    .font(.custom("STCRegular", size: 12))
                                    .foregroundColor(Color("000000").opacity(0.6))
                                    .lineSpacing(4)
                            }
                        }
                        VStack(alignment:.leading,spacing: 0){
                            HStack{
                                Text("Lorem ipsum dolor")
                                    .font(.custom("STC Bold", size: 16))
                                    .foregroundColor(Color("000000").opacity(0.8))
                            }
                            HStack{
                                Text("Lorem ipsum dolor sit amet, consectetur adipis cing elit. Etiam odio est, laoreet vitae dictum ac, accumsan vitae erat. Nullam et hendrerit nulla, vel dapibus dolor. Aliquam males uada at orci vitae dapibus. Fusce rutrum magna id lacus tristi que, sit amet efficitur ligula maximus.")
                                    .frame(width: 335,height: 92)
                                    .font(.custom("STCRegular", size: 12))
                                    .foregroundColor(Color("000000").opacity(0.6))
                                    .lineSpacing(4)
                            }
                        }
                        VStack(alignment:.leading,spacing: 0){
                            HStack{
                                Text("Lorem ipsum dolor")
                                    .font(.custom("STC Bold", size: 16))
                                    .foregroundColor(Color("000000").opacity(0.8))
                            }
                            HStack{
                                Text("Lorem ipsum dolor sit amet, consectetur adipis cing elit. Etiam odio est, laoreet vitae dictum ac, accumsan vitae erat. Nullam et hendrerit nulla, vel dapibus dolor. Aliquam males uada at orci vitae dapibus. Fusce rutrum magna id lacus tristi que, sit amet efficitur ligula maximus.")
                                    .frame(width: 335,height: 92)
                                    .font(.custom("STCRegular", size: 12))
                                    .foregroundColor(Color("000000").opacity(0.6))
                                    .lineSpacing(4)
                            }
                        }
                    }
                }.padding(.bottom,122.38)
            }
        }
    }
}

struct Terms___Conditions_Previews: PreviewProvider {
    static var previews: some View {
        Terms___Conditions()
    }
}
