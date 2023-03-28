//
//  BackButton.swift
//  PosteID
//
//  Created by Giuseppe Rocco on 28/03/23.
//

import SwiftUI

struct BackButton: View {
    var label: String
    var action: ()->Void
    
    var body: some View {
        
        Button(action: action) {
            Rectangle()
                .fill(.red)
                .opacity(0.9)
                .overlay() {
                    Text(label)
                        .foregroundColor(.white)
                        .font(.title3)
                        .fontWeight(.bold)
                }
                .frame(width: 100.0, height: 30.0)
                .cornerRadius(20.0)
                .shadow(radius: 9.0)
        }
    }
}
