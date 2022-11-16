//
//  ContentView.swift
//  Khebra_Technician_App
//
//  Created by Apple1 on 16/11/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            Login()
        }.accentColor(Color("10275C"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
