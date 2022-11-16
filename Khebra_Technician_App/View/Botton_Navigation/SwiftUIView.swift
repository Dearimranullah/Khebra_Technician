//
//  SwiftUIView.swift
//  Khebra_Technician_App
//
//  Created by Apple1 on 21/11/2022.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        HStack {
            Text("First text")
            Spacer()
            Divider()
            Text("Second text")
        }
        .frame(width: 350,height: 50)
        .border(.black,width: 3)


    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
