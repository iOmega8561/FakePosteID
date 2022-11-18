//
//  TopControls.swift
//  PosteID
//
//  Created by Giuseppe Rocco on 18/11/22.
//

import SwiftUI

struct TopInfo: View {
    var colorScheme: ColorScheme
    
    var body: some View {
        HStack {
            
            if UIDevice.current.localizedModel == "iPhone" {
                Spacer()
            } else {
                Spacer().frame(maxWidth: 20.0)
            }
            
            VStack {
                Text("PosteID Dashboard")
                    .font(UIDevice.current.localizedModel == "iPhone" ? .system(size: 37):.system(size: 37))
                    .fontWeight(.bold)
                    .foregroundColor(colorScheme == .dark ? .white:.black)
                    .offset(x: UIDevice.current.localizedModel == "iPhone" ? 0.0:-0,y: UIDevice.current.localizedModel == "iPhone" ? 0.0:25)
                
                Rectangle()
                    .fill(Color("PosteYellow"))
                    .opacity(0.9)
                    .overlay() {
                        Text("Last login on NOVEMBER 15 2022 at 14:41")
                            .foregroundColor(.black)
                    }
                    .frame(maxWidth: 340.0, maxHeight: 25)
                    .cornerRadius(20.0)
                    .shadow(color: Color("PosteYellow"), radius: 4)
                    .offset(y: UIDevice.current.localizedModel == "iPhone" ? -20.0:0.0)
            }
            Spacer()
            
            if UIDevice.current.localizedModel != "iPhone" {
                
                TopControls().offset(y: 16.0)
                
                Spacer().frame(maxWidth: 20.0)
            }
        }
    }
}

struct TopControls: View {
    var body: some View {
        HStack {
            NavigationLink(destination: EmptyView()) {
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
            
            NavigationLink(destination: Settings()) {
                Rectangle()
                    .fill(Color("PosteYellow"))
                    .opacity(0.9)
                    .overlay() {
                        HStack(spacing: 5) {
                            Image(systemName: "gearshape.2.fill")
                                .renderingMode(.template)
                                .resizable()
                                .scaledToFit()
                                .foregroundColor(.black)
                                .frame(maxWidth: 50.0)
                            
                            Text("Settings")
                                .foregroundColor(.black)
                                .fontWeight(.bold)
                        }
                    }
                    .frame(maxWidth: 170.0, maxHeight: 70.0)
                    .cornerRadius(20.0)
                    .shadow(color: Color("PosteYellow"), radius: 4)
            }
            
        }
    }
}

struct TopControls_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}
