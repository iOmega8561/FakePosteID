//
//  Form.swift
//  PosteID
//
//  Created by Giuseppe Rocco on 21/11/22.
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

                Rectangle()
                    .fill(Color("PosteYellow"))
                    .cornerRadius(30.0)
                    .shadow(color: Color("PosteYellow"), radius: 6)
                    .overlay() {
                        Rectangle()
                            .fill(colorScheme == .dark ? Color(red: 0.0, green: 0.0, blue: 0.0):Color(red: 0.949, green: 0.949, blue: 0.971))
                            .overlay() {
                                VStack {
                                    Spacer()
                                    
                                    Rectangle()
                                        .cornerRadius(10.0)
                                        .foregroundColor(Color("PosteYellow"))
                                        .frame(maxWidth: 300.0, maxHeight: 100.0)
                                        .shadow(color: Color("PosteYellow"), radius: 6)
                                        .overlay() {
                                            Image("PosteIDLogo")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(maxWidth: 280.0)
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
                                    .frame(maxWidth: 400.0, maxHeight: proxy.size.height * (UIDevice.current.localizedModel == "iPhone" ? 0.25:(proxy.size.width > proxy.size.height ? 0.25:0.17)))
                                    
                                    Spacer()
                                    
                                    if !isUnlocked {
                                        BeforeUnlock(isUnlocked: $isUnlocked)
                                        
                                    } else {
                                        AfterUnlock()
                                    }
                                    
                                    Spacer()
                                }
                            }
                            .cornerRadius(25.0)
                            .frame(maxWidth: proxy.size.width*(UIDevice.current.localizedModel == "iPhone" ? 0.97:0.58), maxHeight: proxy.size.height*(UIDevice.current.localizedModel == "iPhone" ? 0.92:0.7))
                    }
                    .frame(maxWidth: proxy.size.width*(UIDevice.current.localizedModel == "iPhone" ? 1.0:(proxy.size.width > proxy.size.height ? 0.59:0.60)), maxHeight: proxy.size.height*(UIDevice.current.localizedModel == "iPhone" ? 0.95:0.715))
                
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
