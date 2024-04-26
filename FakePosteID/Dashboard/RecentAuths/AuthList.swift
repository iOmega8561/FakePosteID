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
//  RecentAuths.swift
//  PosteID
//
//  Created by Giuseppe Rocco on 18/11/22.
//

import SwiftUI

struct AuthList: View {
    var colorScheme: ColorScheme
    var geometry: GeometryProxy
    
    var body: some View {
        HStack {
            Spacer()
            ScrollView {
                LazyVStack(spacing: 12) {
                    Spacer()
                    ForEach(fakeAuthData) { auth in
                        AuthEntry(colorScheme: colorScheme, auth: auth)
                    }
                    Spacer()
                }.frame(maxWidth: UIDevice.current.localizedModel == "iPhone" ? 340.0:700.0)
            }.scrollIndicators(.hidden)
            
            Spacer()
        }
    }
}

struct AuthList_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
