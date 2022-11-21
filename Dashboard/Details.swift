//
//  Settings.swift
//  PosteID
//
//  Created by Giuseppe Rocco on 18/11/22.
//

import SwiftUI

struct MenuItem: Identifiable {
    var id = UUID()
    var name: String
    var value: String = ""
    var image: String = ""
    var subMenuItems: [MenuItem]?
}

let listItems = [
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


struct Details: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            List(listItems, children: \.subMenuItems) { item in
                
                HStack {
                    if item.image != "" {
                        Image(systemName: item.image)
                    }
                    
                    VStack(alignment: .leading) {
                        Text(item.name)
                        
                        if item.value != "" {
                            
                            Text(item.value)
                        }
                    }
                }
            }
            .navigationTitle("Accont Details")
            .navigationBarTitleDisplayMode(.large)
            .toolbar(content: {
                BackButton(label: "⌫ Back  ", action: { dismiss() })
            })
        }
    }
}

struct Details_Previews: PreviewProvider {
    static var previews: some View {
        Details()
    }
}
