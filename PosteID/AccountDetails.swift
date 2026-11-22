//
//  Settings.swift
//  PosteID
//
//  Created by Giuseppe Rocco on 18/11/22.
//

import SwiftUI

struct AccountDetails: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            List(fakeAccountDetails, children: \.subMenuItems) { item in
                
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

struct AccountDetails_Previews: PreviewProvider {
    static var previews: some View {
        AccountDetails()
    }
}
