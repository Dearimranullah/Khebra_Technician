//
//  Profile.swift
//  Khebra_Technician_App
//
//  Created by Apple1 on 22/11/2022.
//

import SwiftUI

struct Profile: View {
    @Environment(\.presentationMode) var presentationMode
    @State var username:String=""
    var body: some View {
        ZStack{
            Color("FAFAFA")
                .edgesIgnoringSafeArea(.all)
            ScrollView(showsIndicators: false){
                VStack(spacing:24){
                    VStack(spacing:53){
                        Text("Profile")
                            .foregroundColor(Color("10275C"))
                            .font(.custom("STC Bold", size:18))
                        ZStack(alignment:.bottomTrailing){
                                Image("Profile")
                                    .resizable()
                                    .frame(width:102,height: 102)
                                ZStack{
                                    RoundedRectangle(cornerRadius: 50)
                                        .fill(.white)
                                        .frame(width: 32,height: 32)
                                    Image("camera")
                                        .resizable()
                                        .frame(width: 22.59,height: 22.59)
                                }
                        }
                    }
                    VStack(spacing:50){
                        VStack(alignment:.leading,spacing:10){
                            VStack(spacing:13){
                                VStack(alignment:.leading,spacing: 12){
                                    HStack{
                                        Image("name")
                                            .resizable()
                                            .frame(width: 13.93,height: 19.5)
                                        Text("Name")
                                            .font(.custom("STCRegular", size: 16))
                                            .foregroundColor(Color("5F5E5E"))
                                    }
                                    TextField("Mohammed Abed ElAzizi", text: $username)
                                        .padding()
                                        .frame(width: 310,height: 45)
                                        .background(.white)
                                        .border(Color("B2C1E3"),width: 0.2)
                                }
                                VStack(alignment:.leading,spacing: 12){
                                    HStack{
                                        Image("Email")
                                            .resizable()
                                            .frame(width: 18.42,height: 15.58)
                                        Text("Email")
                                            .font(.custom("STCRegular", size: 16))
                                            .foregroundColor(Color("5F5E5E"))
                                    }
                                    HStack{
                                        TextField("mohammedabed@gmail.com", text: $username)
                                            .padding(.leading,16)
                                        
                                        Image("checkmark")
                                            .resizable()
                                            .frame(width: 20,height: 20)
                                            .padding(.trailing,12)
                                    }
                                    .frame(width: 310,height: 45)
                                    .border(Color("B2C1E3"),width: 0.2)
                                    .background(.white)
                                }
                                VStack(alignment:.leading,spacing: 12){
                                    HStack{
                                        Image("Mobile No.")
                                            .resizable()
                                            .frame(width: 14,height: 22)
                                        Text("Mobile No.")
                                            .font(.custom("STCRegular", size: 14))
                                            .foregroundColor(Color("5F5E5E"))
                                    }
                                    HStack{
                                        Text("+966")
                                            .foregroundColor(Color("3A559F"))
                                            .font(.custom("STCRegular", size: 14))
                                            .padding(.leading,16)
                                        Divider()
                                        TextField("", text: $username)
                                        
                                        
                                        Image("checkmark")
                                            .resizable()
                                            .frame(width: 20,height: 20)
                                            .padding(.trailing,12)
                                    }
                                    .frame(width: 310,height: 45)
                                    .border(Color("B2C1E3"),width: 0.2)
                                    .background(.white)
                                }
                                VStack(alignment:.leading,spacing: 12){
                                    HStack{
                                        Image("ID:Iqama No.")
                                            .resizable()
                                            .frame(width: 14,height: 22)
                                        Text("ID/Iqama No.")
                                            .font(.custom("STCRegular", size: 14))
                                            .foregroundColor(Color("5F5E5E"))
                                    }
                                    HStack{
                                        TextField("", text: $username)
                                            .padding()
                                    }
                                    .frame(width: 310,height: 45)
                                    .border(Color("B2C1E3"),width: 0.2)
                                    .background(.white)
                                }
                                VStack(alignment:.leading,spacing: 12){
                                    HStack{
                                        Image("upload")
                                            .resizable()
                                            .frame(width: 14.68,height: 16.31)
                                        TextField("Upload photo ID", text: $username)
                                        
                                    }
                                    .padding()
                                    .frame(width: 310,height: 45)
                                    .border(Color("B2C1E3"),width: 0.2)
                                    .background(.white)
                                }
                            }
                            VStack(alignment: .leading){
                                HStack{
                                    Image("image")
                                        .resizable()
                                        .frame(width: 73,height: 60)
                                }
                                VStack(alignment:.leading,spacing: 12){
                                    HStack{
                                        Image("Commercial Registration No")
                                            .resizable()
                                            .frame(width: 20.7,height: 17.2)
                                        Text("Commercial Registration No")
                                            .font(.custom("STCRegular", size: 14))
                                            .foregroundColor(Color("5F5E5E"))
                                    }
                                    TextField("", text: $username)
                                        .padding()
                                        .frame(width: 310,height: 45)
                                        .background(.white)
                                        .border(Color("B2C1E3"),width: 0.2)
                                }
                                HStack{
                                    Image("upload")
                                        .resizable()
                                        .frame(width: 14.68,height: 16.31)
                                    TextField("Upload photo ID", text: $username)
                                    
                                }
                                .padding()
                                .frame(width: 310,height: 45)
                                .border(Color("B2C1E3"),width: 0.2)
                                .background(.white)
                                HStack{
                                    Image("image")
                                        .resizable()
                                        .frame(width: 73,height: 60)
                                }
                                
                            }
                        }
                            HStack{
                                RoundedRectangle(cornerRadius: 4)
                                    .fill(Color("F27D00"))
                                    .frame(width: 244,height: 50)
                                        .onTapGesture(perform: {
                                            presentationMode.wrappedValue.dismiss()
                                        })
                                    .overlay{
                                        Text("Save")
                                            .font(.custom("STC Bold", size: 18))
                                            .foregroundColor(.white)
                                    }
                            }
                        

                       
                        
                    }
                    
                }
            }
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
