//
//  Rating.swift
//  Khebra_Technician_App
//
//  Created by Apple1 on 24/11/2022.
//

import SwiftUI

struct Rating: View {
    @State var rating:Int=3
    var body: some View {
        ZStack{
            Color("FAFAFA")
                .edgesIgnoringSafeArea(.all)
            VStack{
                VStack(spacing:35){
                    VStack(spacing:50){
                        HStack{
                            Text("Rating")
                                .foregroundColor(Color("10275C"))
                                .font(.custom("STC Bold", size:18))
                        }
                        VStack{
                            RoundedRectangle(cornerRadius: 1)
                                .fill(.clear)
                                .frame(width: 310,height: 45)
                                .border(Color("B2C1E3"),width: 0.2)
                                .background(.white)
                                .overlay{
                                    HStack{
                                        Text("Rating")
                                            .foregroundColor(Color("10275C"))
                                            .font(.custom("STCRegular", size: 14))
                                        Spacer()
                                        HStack{
                                            Image(systemName:"star")
                                                .resizable()
                                                .frame(width: 16.33,height: 16.31)
                                                .foregroundColor(Color("F27D00"))
                                            Text("4.9 (70 user)")
                                                .font(.custom("STCRegular", size: 14))
                                                .foregroundColor(Color("F27D00"))
                                        }
                                    }.padding(.horizontal)
                                }
                        }
                    }
                    VStack{
                        RoundedRectangle(cornerRadius: 2)
                            .fill(.white)
                            .frame(width: 339,height: 241)
                            .border(Color("B2C1E3"),width: 0.2)
                            .overlay {
                                VStack(spacing:0){
                                    
                                    VStack(spacing:0){
                                        HStack{
                                            Text("Comments")
                                                .font(.custom("STCRegular", size: 14))
                                                .foregroundColor(Color("10275C"))
                                            Spacer()
                                            Divider()
                                            Text("Rating")
                                                .font(.custom("STCRegular", size: 14))
                                                .foregroundColor(Color("10275C"))
                                                .frame(width:66)
                                        }
                                        Divider()
                                    }
                                    VStack(spacing:0){
                                        HStack{
                                            Text("Excellent and great work")
                                                .font(.custom("STCRegular", size: 14))
                                                .foregroundColor(Color("5A5A5A"))
                                            Spacer()
                                            Divider()
                                            ZStack{
                                                starsView
                                                    .overlay {
                                                        overlayView
                                                            .mask(starsView)
                                                    }
                                            }
                                        }
                                        Divider()
                                    }
                                    VStack(spacing:0){
                                        HStack{
                                            Text("Fast and high quality")
                                                .font(.custom("STCRegular", size: 14))
                                                .foregroundColor(Color("5A5A5A"))
                                            Spacer()
                                            Divider()
                                            ZStack{
                                                starsView
                                                    .overlay {
                                                        overlayView
                                                            .mask(starsView)
                                                    }
                                            }
                                        }
                                        Divider()
                                    }
                                    VStack(spacing:0){
                                        HStack{
                                            Text("I recommend to deal with him")
                                                .font(.custom("STCRegular", size: 14))
                                                .foregroundColor(Color("5A5A5A"))
                                            Spacer()
                                            Divider()
                                            ZStack{
                                                starsView
                                                    .overlay {
                                                        overlayView
                                                            .mask(starsView)
                                                    }
                                            }
                                        }
                                        Divider()
                                    }
                                    VStack(spacing:0){
                                        HStack{
                                            Text("Bless you for the effort")
                                                .font(.custom("STCRegular", size: 14))
                                                .foregroundColor(Color("5A5A5A"))
                                            Spacer()
                                            Divider()
                                            ZStack{
                                                starsView
                                                    .overlay {
                                                        overlayView
                                                            .mask(starsView)
                                                    }
                                            }
                                        }
                                        Divider()
                                    }
                                    VStack(spacing:0){
                                        HStack{
                                            Text("A humble job that needs training")
                                                .font(.custom("STCRegular", size: 14))
                                                .foregroundColor(Color("5A5A5A"))
                                            Spacer()
                                            Divider()
                                            ZStack{
                                                starsView
                                                    .overlay {
                                                        overlayView
                                                            .mask(starsView)
                                                    }
                                            }
                                        }
                                        Divider()
                                    }
                                }.padding(.horizontal)
                            }
                    }
                }
                Spacer()
            }
        }
       
    }
    private var overlayView: some View {
        GeometryReader{ geometry in
            ZStack(alignment: .leading){
                Rectangle()
                    .foregroundColor(.yellow)
                    .frame(width: CGFloat(rating)/5 * geometry.size.width)
                    
            }
            
        }.allowsHitTesting(false)
    }
    private var starsView: some View {
        HStack(spacing:2){
            ForEach(1..<6){ index in
                Image(systemName: "star.fill")
                    .resizable()
                    .frame(width: 11.5,height: 11)
                    .foregroundColor(.gray)
                    .onTapGesture {
                        withAnimation(.easeOut){
                            rating=index
                        }
                       
                    }
                
            }
        }
    }
}

struct Rating_Previews: PreviewProvider {
    static var previews: some View {
        Rating()
    }
}
