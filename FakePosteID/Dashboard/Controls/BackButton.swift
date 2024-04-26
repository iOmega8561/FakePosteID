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
//  BackButton.swift
//  PosteID
//
//  Created by Giuseppe Rocco on 28/03/23.
//

import SwiftUI

struct BackButton: View {
    var label: String
    var action: ()->Void
    
    var body: some View {
        
        Button(action: action) {
            Rectangle()
                .fill(.red)
                .opacity(0.9)
                .overlay() {
                    Text(label)
                        .foregroundColor(.white)
                        .font(.title3)
                        .fontWeight(.bold)
                }
                .frame(width: 100.0, height: 30.0)
                .cornerRadius(20.0)
                .shadow(radius: 9.0)
        }
    }
}
