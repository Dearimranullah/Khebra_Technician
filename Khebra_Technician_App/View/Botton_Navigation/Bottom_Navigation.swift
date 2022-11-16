//
//  Bottom_Navigation.swift
//  Khebra_Technician_App
//
//  Created by Apple1 on 16/11/2022.
//

import SwiftUI

struct Bottom_Navigation: View {
    init() {
    UITabBar.appearance().backgroundColor = UIColor.white

    }
    var body: some View {
        RoundedRectangle(cornerRadius:10)
            .fill(.red)
            .frame(maxWidth:.infinity)
            .overlay{
                TabView{
                    Home()
                        .tabItem {
                            Image(systemName: "house.fill")
                            Text("Home")
                        }
                    Orders()
                        .tabItem {
                            Image(systemName: "chart.bar.doc.horizontal.fill")
                            Text("Orders")
                        }
                    Notifications()
                        .tabItem {
                            Image(systemName: "checkmark.seal")
                            Text("Notifications")
                        }
                    More()
                        .tabItem {
                            Image(systemName: "ellipsis")
                            Text("More")
                        }
                }
                .accentColor(Color("F27D00"))
                
            }
    }
}

struct Bottom_Navigation_Previews: PreviewProvider {
    static var previews: some View {
        Bottom_Navigation()
    }
}
