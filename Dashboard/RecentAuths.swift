//
//  RecentAuths.swift
//  PosteID
//
//  Created by Giuseppe Rocco on 18/11/22.
//

import SwiftUI

struct AuthData: Identifiable, Hashable {
    let id = UUID()
    
    let time: String
    let service: String
    let auth_ok: Bool
}

var sampleData = [
    AuthData(time: "21:10", service: "TEST - Some SPID Service", auth_ok: true),
    AuthData(time: "20:30", service: "TEST - Some SPID Service", auth_ok: true),
    AuthData(time: "19:45", service: "TEST - Some SPID Service", auth_ok: true),
    AuthData(time: "19:30", service: "TEST - Some SPID Service", auth_ok: false),
    AuthData(time: "18:55", service: "TEST - Some SPID Service", auth_ok: true),
    AuthData(time: "18:20", service: "TEST - Some SPID Service", auth_ok: false),
    AuthData(time: "17:59", service: "TEST - Some SPID Service", auth_ok: false),
    AuthData(time: "17:42", service: "TEST - Some SPID Service", auth_ok: true),
    AuthData(time: "16:30", service: "TEST - Some SPID Service", auth_ok: true),
    AuthData(time: "16:05", service: "TEST - Some SPID Service", auth_ok: false),
    AuthData(time: "15:47", service: "TEST - Some SPID Service", auth_ok: true),
    AuthData(time: "15:23", service: "TEST - Some SPID Service", auth_ok: false),
    AuthData(time: "14:13", service: "TEST - Some SPID Service", auth_ok: false),
    AuthData(time: "14:06", service: "TEST - Some SPID Service", auth_ok: true),
    AuthData(time: "13:38", service: "TEST - Some SPID Service", auth_ok: true),
    AuthData(time: "13:22", service: "TEST - Some SPID Service", auth_ok: false),
    AuthData(time: "12:30", service: "TEST - Some SPID Service", auth_ok: false),
    AuthData(time: "12:10", service: "TEST - Some SPID Service", auth_ok: true),
    AuthData(time: "11:50", service: "TEST - Some SPID Service", auth_ok: true),
    AuthData(time: "11:07", service: "TEST - Some SPID Service", auth_ok: false),
    AuthData(time: "10:32", service: "TEST - Some SPID Service", auth_ok: true),
    AuthData(time: "10:05", service: "TEST - Some SPID Service", auth_ok: true),
    AuthData(time: "09:10", service: "TEST - Some SPID Service", auth_ok: false),
    AuthData(time: "09:02", service: "TEST - Some SPID Service", auth_ok: true),
    AuthData(time: "08:00", service: "TEST - Some SPID Service", auth_ok: true),
]

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
                .frame(maxWidth: UIDevice.current.localizedModel == "iPhone" ? 340.0:700.0, maxHeight: geometry.size.height * 0.8)
                .cornerRadius(20.0)
                .shadow(color: Color("PosteYellow"), radius: 4)
            
            Spacer()
        }
    }
}

struct RecentAuths_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}
