//
//  Copyright (c) 2025 Giuseppe Rocco
//  Licensed under the MIT License. See the LICENSE file for details.
//
//  -----------------------------------------------------------------
//
//  Models.swift
//  FakePosteID
//
//  Created by Giuseppe Rocco on 28/03/23.
//

import Foundation

struct MenuItem: Identifiable {
    var id = UUID()
    var name: String
    var value: String = ""
    var image: String = ""
    var subMenuItems: [MenuItem]?
}

struct AuthData: Identifiable, Hashable {
    let id = UUID()
    
    let time: String
    let service: String
    let auth_ok: Bool
}
