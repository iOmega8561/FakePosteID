//
//  PosteIDApp.swift
//  PosteID
//
//  Created by Giuseppe Rocco on 17/11/22.
//

import SwiftUI

@main
struct PosteIDApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            LoginForm()
        }
    }
}
