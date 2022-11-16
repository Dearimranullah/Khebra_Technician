//
//  New_Order_Details.swift
//  Khebra_Technician_App
//
//  Created by Apple1 on 17/11/2022.
//

import SwiftUI
struct New_Order_Details: View {
    @State var isRequest:Bool=false
    @State var  showDoneDialog:Bool=false
    var body: some View {
        ZStack{
            Color("FAFAFA")
                .edgesIgnoringSafeArea(.all)
            VStack{
             
                VStack(spacing:25){
                    VStack(spacing:43){
                        HStack{
                            Text("New Order Details")
                                .font(.custom("STC Bold", size: 18))
                                .foregroundColor(Color("10275C"))
                        }
                        VStack(spacing:40){
                            VStack{
                                RoundedRectangle(cornerRadius: 4)
                                    .fill(Color(.white))
                                    .frame(width: 317,height: 50)
                                    .border(Color("B2C1E3"),width: 0.2)
                                    .overlay{
                                        HStack(spacing:135){
                                            HStack{
                                                Text("Order No.")
                                                    .font(.custom("STCRegular", size: 14))
                                                    .foregroundColor(Color("B2C1E3"))
                                                + Text("#58246")
                                                    .font(.custom("STCRegular", size: 14))
                                                    .foregroundColor(Color("000000"))
                                                
                                            }
                                            Image("Plumbing")
                                                .resizable()
                                                .frame(width: 44,height: 31)
                                        }
                                    }
                            }
                            VStack(spacing:16){
                                VStack(alignment:.leading,spacing:11){
                                    HStack(spacing:11){
                                        Image("location")
                                            .resizable()
                                            .frame(width:12,height: 15)
                                        Text("Order Location")
                                            .font(.custom("STC Bold", size: 16))
                                            .foregroundColor(Color("10275C"))
                                    }
                                    Line()
                                        .stroke(style: StrokeStyle(lineWidth: 1, dash: [5]))
                                        .frame(width: 317,height: 1)
                                }
                                VStack(alignment:.leading,spacing:23){
                                    HStack{
                                        Image("map")
                                            .resizable()
                                            .frame(width: 316,height: 180)
                                    }
                                    VStack(alignment:.leading,spacing: 13){
                                        VStack{
                                            HStack(alignment:.top,spacing:13){
                                                Image("customer")
                                                    .resizable()
                                                    .frame(width:15,height: 15)
                                                VStack(alignment: .leading,spacing: 8){
                                                    Text("Customer")
                                                        .foregroundColor(Color("B2C1E3"))
                                                        .font(.custom("STCRegular", size: 14))
                                                    Text("Mohammed Abed ElAzizi")
                                                        .foregroundColor(Color("5A5A5A"))
                                                        .font(.custom("STCRegular", size: 14))
                                                }
                                            }
                                            
                                            
                                        }
                                        VStack{
                                            HStack(alignment:.top,spacing:13){
                                                Image("time")
                                                    .resizable()
                                                    .frame(width:15,height: 15)
                                                VStack(alignment: .leading,spacing: 8){
                                                    Text("Date & time")
                                                        .foregroundColor(Color("B2C1E3"))
                                                        .font(.custom("STCRegular", size: 14))
                                                    Text("6/6/2022, 05:30 PM")
                                                        .foregroundColor(Color("5A5A5A"))
                                                        .font(.custom("STCRegular", size: 14))
                                                }
                                            }
                                            
                                            
                                        }
                                        VStack{
                                            HStack(alignment:.top,spacing:13){
                                                Image("Address")
                                                    .resizable()
                                                    .frame(width:12,height: 15)
                                                VStack(alignment: .leading,spacing: 8){
                                                    Text("Address")
                                                        .foregroundColor(Color("B2C1E3"))
                                                        .font(.custom("STCRegular", size: 14))
                                                    Text("As Sahafah, Olaya St. 6531, 3059 Riyadh 13321, Saudi Arabia")
                                                        .frame(width: 228,height:41)
                                                        .foregroundColor(Color("5A5A5A"))
                                                        .font(.custom("STCRegular", size: 14))
                                                }
                                            }
                                            
                                            
                                            
                                        }
                                    }
                                }
                            }
                            
                        }
                    }
                    VStack {
                        HStack{
                            NavigationLink {
                                Invoice_Details()
                            } label: {
                                HStack{
                                    RoundedRectangle(cornerRadius: 3)
                                        .fill(Color("F27D00"))
                                        .frame(width:103,height: 50)
                                        .overlay{
                                            VStack{
                                                Text("Issuance of \n invoice")
                                                    .foregroundColor(.white)
                                                    .multilineTextAlignment(.center)
                                                    .font(.system(size: 16))
                                                    .bold()
                                            }
                                        }
                                }
                            }

                           
                            HStack{
                                RoundedRectangle(cornerRadius: 3)
                                    .fill(Color("F27D00"))
                                    .frame(width:103,height: 50)
                                    .onTapGesture{
                                        isRequest.toggle()
                                    }
                                    .overlay{
                                        VStack{
                                            Text("Postponement Request")
                                                .foregroundColor(.white)
                                                .multilineTextAlignment(.center)
                                                .font(.system(size: 14))
                                                .bold()
                                        }
                                    }
                            }
                            HStack{
                                RoundedRectangle(cornerRadius: 3)
                                    .fill(Color("F27D00"))
                                    .frame(width:103,height: 50)
                                    .overlay{
                                        VStack{
                                            Text("Call Customer")
                                                .foregroundColor(.white)
                                                .multilineTextAlignment(.center)
                                                .font(.system(size: 16))
                                                .bold()
                                        }
                                    }
                            }
                        }
                        HStack{
                            RoundedRectangle(cornerRadius: 3)
                                .fill(Color("F27D00"))
                                .frame(width:103,height: 50)
                                .overlay{
                                    VStack{
                                        Text("finish the job")
                                            .foregroundColor(.white)
                                            .multilineTextAlignment(.center)
                                            .font(.system(size: 16))
                                            .bold()
                                    }.padding(.bottom,20)
                                }
                        }
                    }
                  
                }
            }
//            .padding(.top,31.67)
            Spacer()
            if isRequest {
                GeometryReader { _ in
                    VStack{
                        RoundedRectangle(cornerRadius: 3)
                            .fill(.white)
                            .shadow(radius: 3)
                            .frame(width: 339,height: 270)
                            .overlay{
                                VStack(spacing:22){
                                    VStack(spacing:14){
                                        VStack(spacing:11){
                                            HStack{
                                                Text("Order Postponement")
                                                    .font(.system(size: 18))
                                                    .fontWeight(.bold)
                                                    .foregroundColor(Color("10275C"))
                                                
                                            }
                                            HStack{
                                                Text("Please select date and time")
                                                    .font(.system(size: 16))
                                                    .foregroundColor(Color("10275C"))
                                                
                                            }
                                        }
                                        VStack(alignment: .leading,spacing:17){
                                            HStack(spacing:121){
                                                Text("Time")
                                                Text("Date")
                                            }
                                            
                                            HStack{
                                                HStack(spacing:21){
                                                    Image("Time 1")
                                                        .resizable()
                                                        .frame(width:28.41,height:22.3)
                                                    Text("09:00 PM")
                                                    
                                                }.frame(width:159,height:45)
                                                
                                                
                                                Divider()
                                                
                                                HStack(spacing:12){
                                                    Image("Calender")
                                                        .resizable()
                                                        .frame(width:15,height:15)
                                                    Text("12/12/2022")
                                                }.frame(width:159,height:45)
                                            }.frame(width:317,height:45)
                                                .border(Color("B2C1E3"),width: 0.2)
                                            
                                            
                                        }
                                    }
                                    VStack{
                                        Button {
                                            isRequest.toggle()
                                            showDoneDialog.toggle()
                                        } label: {
                                            Text("Send Request")
                                                .font(.system(size: 16))
                                                .fontWeight(.bold)
                                                .foregroundColor(.white)
                                        }
                                        .frame(width: 244,height: 50)
                                        .background(Color("F27D00"))
                                        .cornerRadius(3)

                                    }
                                }
                            }
//                            if showDoneDialog {
//                                Custom_Done_Dialog(showDoneDialog: $showDoneDialog)
//                            }
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                } .background(
                    Color.black.opacity(0.65)
                        .edgesIgnoringSafeArea(.all)
                )
               
//                Custom_AlertDialog(showCustomDialog: $showCustomDialog)
            }
            if showDoneDialog{
                GeometryReader { _ in
                    VStack{
                        RoundedRectangle(cornerRadius: 3)
                            .fill(.white)
                            .shadow(radius: 3)
                            .frame(width: 339,height: 377)
                            .overlay{
                                VStack(spacing:14.75){
                                    VStack{
                                        HStack{
                                            Image("Done")
                                                .resizable()
                                                .frame(width: 146.75,height: 155)
                                        }
                                    }
                                    
                                    VStack(spacing:28){
                                        VStack(spacing:11){
                                            HStack{
                                                Text("Postponement Request Sent")
                                                    .font(.system(size: 18))
                                                    .fontWeight(.bold)
                                                    .foregroundColor(Color("10275C"))
                                            }
                                            HStack{
                                                Text("Your postponement request has been sent to the technician.")
                                                    .font(.system(size: 16))
                                                    .multilineTextAlignment(.center)
                                                    .foregroundColor(Color("10275C"))
                                            }
                                        }
                                        VStack{
                                            Button {
                                                showDoneDialog.toggle()
                                            } label: {
                                                Text("Done")
                                                    .font(.system(size: 16))
                                                    .fontWeight(.bold)
                                                    .foregroundColor(.white)
                                            }
                                            .frame(width: 244,height: 50)
                                            .background(Color("F27D00"))
                                            .cornerRadius(3)
                                            
                                        }
                                    }
                                }
                            }
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                } .background(
                    Color.black.opacity(0.65)
                        .edgesIgnoringSafeArea(.all)
                )
               
            }
        }
    }
}

struct New_Order_Details_Previews: PreviewProvider {
    static var previews: some View {
        New_Order_Details()
    }
}
