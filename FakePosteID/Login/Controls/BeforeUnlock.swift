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
//  BeforeUnlock.swift
//  PosteID
//
//  Created by Giuseppe Rocco on 28/03/23.
//

import SwiftUI
import LocalAuthentication

struct BeforeUnlock: View {
    @Binding var isUnlocked: Bool
    
    private func biometricLogin() -> Void {
        
        let context = LAContext()
        var error: NSError?
        
        // check whether biometric authentication is possible
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            // it's possible, so go ahead and use it
            let reason = "Security reason"
            
            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason) { success, authenticationError in
                // authentication has now completed
                if success {
                    isUnlocked = true
                } else {
                    isUnlocked = false
                }
            }
        }
    }
    
    var body: some View {
        HStack {
            Button(action: biometricLogin) {
                Rectangle()
                    .fill(Color("PosteYellow"))
                    .opacity(0.9)
                    .overlay() {
                        HStack(spacing: 5) {
                            Image(systemName: "faceid")
                                .renderingMode(.template)
                                .resizable()
                                .scaledToFit()
                                .foregroundColor(.black)
                                .frame(maxWidth: 50.0)
                            
                            Text("Biometric Login")
                                .foregroundColor(.black)
                                .fontWeight(.bold)
                        }
                    }
                    .frame(maxWidth: 170.0, maxHeight: 70.0)
                    .cornerRadius(20.0)
                    .shadow(color: Color("PosteYellow"), radius: 4)
            }
            
            Spacer().frame(maxWidth: (UIDevice.current.localizedModel == "iPhone" ? 15.0:40.0))
            
            Button(action: {}) {
                Rectangle()
                    .fill(Color("PosteYellow"))
                    .opacity(0.9)
                    .overlay() {
                        HStack(spacing: 5) {
                            Image(systemName: "questionmark.circle" /*"gearshape.2.fill"*/)
                                .renderingMode(.template)
                                .resizable()
                                .scaledToFit()
                                .foregroundColor(.black)
                                .frame(maxWidth: 50.0)
                            
                            Text("Customer Support")
                                .foregroundColor(.black)
                                .fontWeight(.bold)
                        }
                    }
                    .frame(maxWidth: 170.0, maxHeight: 70.0)
                    .cornerRadius(20.0)
                    .shadow(color: Color("PosteYellow"), radius: 4)
            }
        }
    }
}

struct BeforeUnlock_Previews: PreviewProvider {
    static var previews: some View {
        BeforeUnlock(isUnlocked: .constant(true))
    }
}
