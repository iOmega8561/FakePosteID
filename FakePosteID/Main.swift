//
//  Copyright (c) 2025 Giuseppe Rocco
//  Licensed under the MIT License. See the LICENSE file for details.
//
//  -----------------------------------------------------------------
//
//  Main.swift
//  FakePosteID
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
