//
//  Multiple_pages.swift
//  Khebra_Technician_App
//
//  Created by Apple1 on 26/11/2022.
//

import SwiftUI

struct Multiple_pages: View {
    @State var showSecond = false
       @State var showThird = false
    var body: some View {
        GeometryReader { geometry in
                    ZStack {
                        VStack(spacing: 50) {
                           New_Order_Details()
                            Button("to SecondView") {
                                self.showSecond = true
                            }
                        }
                        .frame(width: geometry.size.width, height: geometry.size.height)
                        .background(Rectangle().foregroundColor(.white))
                        if self.showSecond {
                            VStack(spacing: 50) {
                              Invoice_Details()
                                Button("to ThirdView") {
                                    self.showThird = true
                                }
                                Button("back") {
                                    self.showSecond = false
                                }
                            }
                            .frame(width: geometry.size.width, height: geometry.size.height)
                            .background(Rectangle().foregroundColor(.white))
                            if self.showThird {
                                VStack(spacing: 50) {
                                    Text("ThirdView")
                                    Button("back") {
                                        self.showThird = false
                                    }
                                    Button("back to FirstView") {
                                        self.showThird = false
                                        self.showSecond = false
                                    }
                                }
                                .frame(width: geometry.size.width, height: geometry.size.height)
                                .background(Rectangle().foregroundColor(.white))
                            }
                        }
                    }
                }
    }
}

struct Multiple_pages_Previews: PreviewProvider {
    static var previews: some View {
        Multiple_pages()
    }
}
