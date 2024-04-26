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
//  Settings.swift
//  PosteID
//
//  Created by Giuseppe Rocco on 18/11/22.
//

import SwiftUI

struct AccountDetails: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            List(fakeAccountDetails, children: \.subMenuItems) { item in
                
                HStack {
                    if item.image != "" {
                        Image(systemName: item.image)
                    }
                    
                    VStack(alignment: .leading) {
                        Text(item.name)
                        
                        if item.value != "" {
                            
                            Text(item.value)
                        }
                    }
                }
            }
            .navigationTitle("Accont Details")
            .navigationBarTitleDisplayMode(.large)
            .toolbar(content: {
                BackButton(label: "⌫ Back  ", action: { dismiss() })
            })
        }
    }
}

struct AccountDetails_Previews: PreviewProvider {
    static var previews: some View {
        AccountDetails()
    }
}
