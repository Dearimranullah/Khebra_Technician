//
//  Home.swift
//  Khebra_Technician_App
//
//  Created by Apple1 on 16/11/2022.
//
//.font(.custom("STCRegular", size: 14))
//.font(.custom("STC Bold", size:18))
import SwiftUI
struct Home: View {
    private var numberofimages=4
    private let timer = Timer.publish(every: 2, on: .main, in: .common).autoconnect()
    @State private var currentIndex:Int=0
     let images = ["plumbing1", "plumbing2", "plumbing3", "plumbing4"]
    @State private var isAvailable = false
    var body: some View {
        ZStack{
            Color("FAFAFA")
                .edgesIgnoringSafeArea(.all)
            VStack{
                VStack(spacing:40){
                    HStack(spacing:83.6){
                        HStack{
                            HStack(spacing:20){
                                HStack(spacing:10){
                                    Toggle("Enable light mode: ", isOn: $isAvailable)
                                        .toggleStyle(DarkModeStyle())
                                    Text("Available")
                                        .foregroundColor(Color("046006"))
                                        .font(.custom("STCRegular", size: 14))
                                }
                                HStack{
                                    RoundedRectangle(cornerRadius: 4)
                                        .fill(.white)
                                        .frame(width: 114,height: 45)
                                        .border(Color("B2C1E3"),width: 0.2)
                                        .background(.white)
                                        .overlay{
                                            HStack{
                                                
                                                Text("Balance")
                                                    .font(.custom("STCRegular", size: 14))
                                                    .foregroundColor(Color("B2C1E3"))
                                                Text("0.00")
                                                    .foregroundColor(Color("F27D00"))
                                                    .font(.custom("STC Bold", size:18))
                                                
                                            }
                                            
                                        }
                                }
                            }
                        }
                        NavigationLink {
                            Notification()
                        } label: {
                            HStack{
                                Image("bell")
                                    .resizable()
                                    .frame(width:22,height: 31.26)
                            }
                        }

                      
                    }.padding(.trailing,24.4)
                    
                    VStack(alignment:.leading,spacing:21){
                        HStack{
                            Text("Incoming Order")
                                .font(.custom("STC Bold", size: 16))
                                .foregroundColor(Color("10275C"))
                        }
                        VStack(spacing:30){
                            VStack(spacing:10){
                                NavigationLink {
                                    Incoming_Order_Details()
                                } label: {
                                    Apply_Card()
                                }
                                NavigationLink {
                                    Incoming_Order_Details()
                                } label: {
                                    Apply_Card()
                                }
                                NavigationLink {
                                    Incoming_Order_Details()
                                } label: {
                                    Apply_Card()
                                }
                            }
                            VStack{
                                TabView(selection: $currentIndex) {
                                    ForEach(0..<4) { item in
                                        Image(images[item])
                                            .resizable()
                                            .scaledToFill()
                                            .overlay{
                                                Color.black.opacity(0.1)
                                            }
                                            .tag(item)
                                    }
                                }
                                .tabViewStyle(PageTabViewStyle())
                                .clipShape(RoundedRectangle(cornerRadius:10))
                                .frame(width:327,height: 150)
                                .onReceive(timer, perform: { _ in
                                    withAnimation{
                                        currentIndex = currentIndex <  numberofimages ? currentIndex + 1 : 0
                                    }
                                })
                                
                                
                            }
                            
                        }
                    }
                }.padding(.top,28.67)
                Spacer()
            }
        }
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
