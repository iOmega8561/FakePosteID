/*
 Copyright (C) 2024  Giuseppe Rocco
 This program is free software: you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation, either version 3 of the License, or
 (at your option) any later version.

 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.

 You should have received a copy of the GNU General Public License
 along with this program.  If not, see <https://www.gnu.org/licenses/>.
*/

//
//  AuthEntry.swift
//  PosteID
//
//  Created by Giuseppe Rocco on 28/03/23.
//

import SwiftUI

struct AuthEntry: View {
    var colorScheme: ColorScheme
    var auth: AuthData
    
    var body: some View {
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
        .frame(maxWidth: UIDevice.current.localizedModel == "iPhone" ? 335.0:670.0, minHeight: 40, maxHeight: 40)
        .shadow(color: colorScheme == .dark ? .black:Color(.sRGBLinear, white: 0, opacity: 0.33), radius: 4)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color("PosteYellow"), lineWidth: 3)
                .opacity(0.85)
                .shadow(color: Color("PosteYellow"), radius: 2)
        )
    }
}

struct AuthEntry_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
