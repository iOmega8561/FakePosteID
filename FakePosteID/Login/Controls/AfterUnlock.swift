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
//  AfterUnlock.swift
//  PosteID
//
//  Created by Giuseppe Rocco on 28/03/23.
//

import SwiftUI

struct AfterUnlock: View {
    var body: some View {
        NavigationLink(destination: DashboardView().navigationBarBackButtonHidden(true)) {
            Rectangle()
                .fill(Color("PosteYellow"))
                .opacity(0.9)
                .overlay() {
                    Text("Continue to PosteID Dashboard")
                        .foregroundColor(.black)
                        .fontWeight(.bold)
                        .font(.title3)
                }
                .frame(maxWidth: UIDevice.current.localizedModel == "iPhone" ? 350.0:370.0, maxHeight: 70.0)
                .cornerRadius(20.0)
                .shadow(color: Color("PosteYellow"), radius: 4)
        }
    }
}


struct AfterUnlock_Previews: PreviewProvider {
    static var previews: some View {
        AfterUnlock()
    }
}
