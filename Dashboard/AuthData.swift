//
//  AuthData.swift
//  PosteID
//
//  Created by Giuseppe Rocco on 19/11/22.
//

import Foundation

struct AuthData: Identifiable, Hashable {
    let id = UUID()
    
    let time: String
    let service: String
    let auth_ok: Bool
}

var sampleData = [
    AuthData(time: "21:10", service: "TEST - Some SPID Service", auth_ok: true),
    AuthData(time: "20:30", service: "TEST - Some SPID Service", auth_ok: true),
    AuthData(time: "19:45", service: "TEST - Some SPID Service", auth_ok: true),
    AuthData(time: "19:30", service: "TEST - Some SPID Service", auth_ok: false),
    AuthData(time: "18:55", service: "TEST - Some SPID Service", auth_ok: true),
    AuthData(time: "18:20", service: "TEST - Some SPID Service", auth_ok: false),
    AuthData(time: "17:59", service: "TEST - Some SPID Service", auth_ok: false),
    AuthData(time: "17:42", service: "TEST - Some SPID Service", auth_ok: true),
    AuthData(time: "16:30", service: "TEST - Some SPID Service", auth_ok: true),
    AuthData(time: "16:05", service: "TEST - Some SPID Service", auth_ok: false),
    AuthData(time: "15:47", service: "TEST - Some SPID Service", auth_ok: true),
    AuthData(time: "15:23", service: "TEST - Some SPID Service", auth_ok: false),
    AuthData(time: "14:13", service: "TEST - Some SPID Service", auth_ok: false),
    AuthData(time: "14:06", service: "TEST - Some SPID Service", auth_ok: true),
    AuthData(time: "13:38", service: "TEST - Some SPID Service", auth_ok: true),
    AuthData(time: "13:22", service: "TEST - Some SPID Service", auth_ok: false),
    AuthData(time: "12:30", service: "TEST - Some SPID Service", auth_ok: false),
    AuthData(time: "12:10", service: "TEST - Some SPID Service", auth_ok: true),
    AuthData(time: "11:50", service: "TEST - Some SPID Service", auth_ok: true),
    AuthData(time: "11:07", service: "TEST - Some SPID Service", auth_ok: false),
    AuthData(time: "10:32", service: "TEST - Some SPID Service", auth_ok: true),
    AuthData(time: "10:05", service: "TEST - Some SPID Service", auth_ok: true),
    AuthData(time: "09:10", service: "TEST - Some SPID Service", auth_ok: false),
    AuthData(time: "09:02", service: "TEST - Some SPID Service", auth_ok: true),
    AuthData(time: "08:00", service: "TEST - Some SPID Service", auth_ok: true),
]
