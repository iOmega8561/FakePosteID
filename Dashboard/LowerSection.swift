//
//  RecentAuths.swift
//  PosteID
//
//  Created by Giuseppe Rocco on 18/11/22.
//

import SwiftUI

struct ScrollViewElement: View {
    var colorScheme: ColorScheme
    var auth: AuthData
    
    var body: some View {
        Rectangle()
            .fill(Color(colorScheme == .dark ? .black:.white))
            .opacity(0.9)
            .overlay() {
                HStack {
                    Spacer().frame(maxWidth: UIDevice.current.localizedModel == "iPhone" ? 9.0:20.0)
                    
                    Image(systemName: "clock")
                        .renderingMode(.template)
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth:20.0)
                        .foregroundColor(colorScheme == .dark ? .white:.black)
                    
                    
                    Text(auth.time)
                        .foregroundColor(colorScheme == .dark ? .white:.black)
                        .frame(width: 46.0)
                    
                    Spacer()
                    
                    Text(auth.service)
                        .foregroundColor(colorScheme == .dark ? .white:.black)
                    
                    Spacer()
                    
                    if UIDevice.current.localizedModel != "iPhone" {
                        Text("Status")
                            .foregroundColor(colorScheme == .dark ? .white:.black)
                        Spacer().frame(maxWidth: 10.0)
                    }
                    
                    if auth.auth_ok {
                        Image(systemName: "checkmark.circle")
                            .foregroundColor(.green)
                    } else {
                        Image(systemName: "xmark.circle")
                            .foregroundColor(.red)
                    }
                    
                    Spacer().frame(maxWidth: UIDevice.current.localizedModel == "iPhone" ? 9.0:20.0)
                }
            }
            .frame(maxWidth: UIDevice.current.localizedModel == "iPhone" ? 320.0:670.0, minHeight: 30)
            .cornerRadius(10.0)
            .shadow(color: colorScheme == .dark ? .black:Color(.sRGBLinear, white: 0, opacity: 0.33), radius: 4)
    }
}

struct RecentAuths: View {
    var colorScheme: ColorScheme
    var geometry: GeometryProxy
    
    private func noPurposeFunction(rowC: Int) -> CGFloat {
        if rowC < 6 { return 45.0}
        
        else if rowC < 10 { return 44.0 }
        
        else if rowC <= 15 { return 43.0 }
        
        else { return 42.7 }
    }
    
    private func calcMaxHeight() -> CGFloat {
        var width: CGFloat
        let dataCount: CGFloat = CGFloat(sampleData.count)
        
        let superIncredibleMath = dataCount - (dataCount == 1.0 ? 0.0:(0.1 * dataCount))
        
        width = superIncredibleMath * noPurposeFunction(rowC: sampleData.count)
        if width > (geometry.size.height * 0.8) {
            width = geometry.size.height * 0.8
        }
        
        return width
    }
    
    var body: some View {
        HStack {
            Spacer()
            
            Rectangle()
                .fill(Color("PosteYellow"))
                .opacity(0.9)
                .overlay() {
                    
                    ScrollView {
                        VStack {
                            Spacer()
                            ForEach(sampleData) { auth in
                                ScrollViewElement(colorScheme: colorScheme, auth: auth)
                            }
                        }.frame(maxWidth: UIDevice.current.localizedModel == "iPhone" ? 340.0:700.0)
                    }
                }
                .frame(maxWidth: UIDevice.current.localizedModel == "iPhone" ? 340.0:700.0, maxHeight: calcMaxHeight())
                .cornerRadius(20.0)
                .shadow(color: Color("PosteYellow"), radius: 4)
            
            Spacer()
        }
    }
}

struct RecentAuths_Previews: PreviewProvider {
    static var previews: some View {
        Dashboard()
    }
}
