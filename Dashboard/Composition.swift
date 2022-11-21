//
//  Login.swift
//  PosteID
//
//  Created by Giuseppe Rocco on 17/11/22.
//

import SwiftUI

struct Dashboard: View {
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        GeometryReader { geometry in
            NavigationStack {
                VStack {
                    
                    Spacer().frame(maxHeight: 20.0)
                    
                    HStack {
                        Spacer()
                        
                        BackButton(label: "⌫ Exit  ", action: { exit(0) })
                        
                        Spacer().frame(maxWidth: 20.0)
                    }
                    
                    TopInfo(colorScheme: colorScheme)
                    
                    if UIDevice.current.localizedModel == "iPhone" {
                        
                        TopControls().frame(maxWidth: 340.0).offset(y: -10.0)
                    }
                    
                    Spacer().frame(maxHeight: UIDevice.current.localizedModel == "iPhone" ? 10.0:40.0)
                    
                    RecentAuths(colorScheme: colorScheme, geometry: geometry)
                    
                    Spacer()
                    
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

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Dashboard()
    }
}
