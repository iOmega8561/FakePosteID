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
//  TopControls.swift
//  PosteID
//
//  Created by Giuseppe Rocco on 18/11/22.
//

import SwiftUI



struct LastLoginInfo: View {
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
