//
//  TopControls.swift
//  PosteID
//
//  Created by Giuseppe Rocco on 28/03/23.
//

import SwiftUI

struct TopControls: View {
    
    @State var detailsAreShown: Bool = false
    
    var body: some View {
        HStack {
            Button(action: {}) {
                Rectangle()
                    .fill(Color("PosteYellow"))
                    .opacity(0.9)
                    .overlay() {
                        HStack(spacing: 5) {
                            Image(systemName: "qrcode.viewfinder")
                                .renderingMode(.template)
                                .resizable()
                                .scaledToFit()
                                .foregroundColor(.black)
                                .frame(maxWidth: 50.0)
                            
                            Text("QR Code Scanner")
                                .foregroundColor(.black)
                                .fontWeight(.bold)
                        }
                    }
                    .frame(maxWidth: 170.0, maxHeight: 70.0)
                    .cornerRadius(20.0)
                    .shadow(color: Color("PosteYellow"), radius: 4)
            }
            
            Spacer().frame(maxWidth: 40.0)
            
            Button(action: { detailsAreShown.toggle() }) {
                Rectangle()
                    .fill(Color("PosteYellow"))
                    .opacity(0.9)
                    .overlay() {
                        HStack(spacing: 5) {
                            Image(systemName: "info.circle" /*"gearshape.2.fill"*/)
                                .renderingMode(.template)
                                .resizable()
                                .scaledToFit()
                                .foregroundColor(.black)
                                .frame(maxWidth: 50.0)
                            
                            Text("Account\nDetails")
                                .foregroundColor(.black)
                                .fontWeight(.bold)
                        }
                    }
                    .frame(maxWidth: 170.0, maxHeight: 70.0)
                    .cornerRadius(20.0)
                    .shadow(color: Color("PosteYellow"), radius: 4)
                    .sheet(isPresented: $detailsAreShown, content: {
                        AccountDetails()
                    })
            }
            
        }
    }
}
