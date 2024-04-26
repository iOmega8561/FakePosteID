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
//  HardCoded.swift
//  PosteID
//
//  Created by Giuseppe Rocco on 28/03/23.
//

import Foundation

var fakeAuthData = [
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


let fakeAccountDetails = [
    MenuItem(name: "Your SPID Account", image: "info.circle", subMenuItems: [
        MenuItem(name: "Identification code:", value: "SNDASDPPNOWIEOIQAS"),
        MenuItem(name: "Username:", value: "someuseremail@domain.com")
    ]),
    
    MenuItem(name: " Active credentials", image: "key", subMenuItems: [
        MenuItem(name: "Level 1 credentials:", value: "Username and password"),
        MenuItem(name: "Level 2 credentials:", value: "Username and password + SMS"),
        MenuItem(name: "Level 2 credentials:", value: "Username and passowrd + APP"),
        MenuItem(name: "Level 3 credentials:", value: "Username and passowrd + APP + PIN")
    ]),
    
    MenuItem(name: "Personal Information", image: "person.crop.circle", subMenuItems: [
        MenuItem(name: "Name:", value: "YourName"),
        MenuItem(name: "Surname:", value: "YourSurname"),
        MenuItem(name: "Gender:", value: "YourGender"),
        MenuItem(name: "Birth day:", value: "01/01/1990"),
        MenuItem(name: "Birth place:", value: "Rome"),
        MenuItem(name: "Province:", value: "RM"),
        MenuItem(name: "Country:", value: "Italy"),
        MenuItem(name: "ID Card type:", value: "Italian ID card"),
        MenuItem(name: "CV Card number:", value: "SOMERANDOMCVNUMBER")
    ]),
    
    MenuItem(name: "Contacts", image: "phone", subMenuItems: [
        MenuItem(name: "E-mail address:", value: "someuseremail@domain.com"),
        MenuItem(name: "Phone number:", value: "+39 399 117 5671"),
        MenuItem(name: "Home address:", value: "Via a caso 51, 70110 ROMA RM")
    ]),
    
    MenuItem(name: "ID Card details", image: "menucard", subMenuItems: [
        MenuItem(name: "Document type:", value: "Italian ID Card"),
        MenuItem(name: "Released by:", value: "Comune"),
        MenuItem(name: "ID Number:", value: "CSWQFGDJHIJB"),
        MenuItem(name: "Release date:", value: "01/01/2022"),
        MenuItem(name: "Release place:", value: "ROME"),
        MenuItem(name: "ID Expiration date:", value: "01/01/2032")
    ]),
]
