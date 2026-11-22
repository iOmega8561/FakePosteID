//
//  BottomControls.swift
//  PosteID
//
//  Created by Giuseppe Rocco on 21/11/22.
//

import SwiftUI
import LocalAuthentication

struct AfterUnlock: View {
    var body: some View {
        NavigationLink(destination: Dashboard().navigationBarBackButtonHidden(true)) {
            Rectangle()
                .fill(Color("PosteYellow"))
                .opacity(0.9)
                .overlay() {
                    Text("Continue to PosteID Dashboard")
                        .foregroundColor(.black)
                        .fontWeight(.bold)
                        .font(.title3)
                }
                .frame(maxWidth: UIDevice.current.localizedModel == "iPhone" ? 350.0:370.0, maxHeight: 70.0)
                .cornerRadius(20.0)
                .shadow(color: Color("PosteYellow"), radius: 4)
        }
    }
}

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
    
    private func onlineSupport() {}
    
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
            
            Button(action: onlineSupport) {
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

struct BottomControls_Previews: PreviewProvider {
    static var previews: some View {
        LoginForm()
    }
}
