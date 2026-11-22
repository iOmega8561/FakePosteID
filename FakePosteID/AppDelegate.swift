//
//  Copyright (c) 2025 Giuseppe Rocco
//  Licensed under the MIT License. See the LICENSE file for details.
//
//  -----------------------------------------------------------------
//
//  AppDelegate.swift
//  FakePosteID
//
//  Created by Giuseppe Rocco on 28/03/23.
//

import Foundation
import SwiftUI

class AppDelegate: NSObject, UIApplicationDelegate {
    static var orientationLock = UIInterfaceOrientationMask.all //By default you want all your views to rotate freely
    
    func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask{
        return AppDelegate.orientationLock
    }
}
