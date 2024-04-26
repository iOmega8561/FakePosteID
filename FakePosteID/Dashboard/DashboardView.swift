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
//  Login.swift
//  PosteID
//
//  Created by Giuseppe Rocco on 17/11/22.
//

import SwiftUI

struct DashboardView: View {
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        GeometryReader { geometry in
            NavigationStack {
                ZStack {
                    /*if colorScheme != .dark {
                        Color(red: 0.949, green: 0.949, blue: 0.971).ignoresSafeArea()
                            
                    }*/
                    
                    VStack {
                        
                        Spacer().frame(maxHeight: 20.0)
                        
                        HStack {
                            Spacer()
                            
                            BackButton(label: "⌫ Exit  ", action: { exit(0) })
                            
                            Spacer().frame(maxWidth: 20.0)
                        }
                        
                        LastLoginInfo(colorScheme: colorScheme)
                        
                        if UIDevice.current.localizedModel == "iPhone" {
                            
                            TopControls().frame(maxWidth: 340.0).offset(y: -10.0)
                        }
                        
                        Spacer().frame(maxHeight: UIDevice.current.localizedModel == "iPhone" ? 10.0:40.0)
                        
                        AuthList(colorScheme: colorScheme, geometry: geometry)
                        
                        Spacer()
                        
                    }
                }
            }
        }
        .onAppear{
            if UIDevice.current.localizedModel == "iPhone" {
                UIDevice.current.setValue( UIInterfaceOrientation.portrait.rawValue, forKey: "orientation")//Forcing the rotation to portrait
                AppDelegate.orientationLock = .portrait // And making sure it stays that way
            }
        }
        .onDisappear {
            if UIDevice.current.localizedModel == "iPhone" {
                AppDelegate.orientationLock = .all // Unlocking the rotation when leaving the view
            }
        }
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
