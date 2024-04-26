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
//  LoginForm2.swift
//  PosteID
//
//  Created by Giuseppe Rocco on 23/11/22.
//

import SwiftUI

struct LoginForm: View {
    @Environment(\.colorScheme) var colorScheme
    
    @State var username: String = ""
    @State var password: String = ""
    
    @State var isUnlocked: Bool = false
    
    var body: some View {
        GeometryReader { proxy in
            NavigationStack {
                ZStack {
                    if colorScheme != .dark {
                        Color(red: 0.949, green: 0.949, blue: 0.971).ignoresSafeArea()
                            
                    }
                    
                    VStack {
                        Spacer()
                        
                        Rectangle()
                            .cornerRadius(10.0)
                            .foregroundColor(Color("PosteYellow"))
                            .frame(maxWidth: UIDevice.current.localizedModel == "iPhone" ? 340.0:360.0, maxHeight: UIDevice.current.localizedModel == "iPhone" ? 110.0:120.0)
                            .shadow(color: Color("PosteYellow"), radius: 6.0)
                            .overlay() {
                                Image("PosteIDLogo")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(maxWidth: UIDevice.current.localizedModel == "iPhone" ? 320.0:340.0)
                            }
                        
                        Spacer()
                        
                        Form {
                            Section(header: Text("Username")) {
                                TextField("Your PosteID Username", text: $username)
                            }
                            
                            Section(header: Text("Password")) {
                                SecureField("Your PosteID Password", text: $password)
                            }.onSubmit {
                                isUnlocked.toggle()
                            }
                        }
                        .frame(maxWidth: 400.0, maxHeight: 200.0)
                        
                        Spacer()
                        
                        if proxy.size.height > 400.0 || UIDevice.current.localizedModel == "iPhone" {
                            
                            if !isUnlocked {
                                BeforeUnlock(isUnlocked: $isUnlocked)
                                
                            } else {
                                AfterUnlock()
                            }
                        }
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

struct LoginForm_Previews: PreviewProvider {
    static var previews: some View {
        LoginForm()
    }
}
