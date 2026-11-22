//
//  AfterUnlock.swift
//  PosteID
//
//  Created by Giuseppe Rocco on 28/03/23.
//

import SwiftUI

struct AfterUnlock: View {
    var body: some View {
        NavigationLink(destination: DashboardView().navigationBarBackButtonHidden(true)) {
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


struct AfterUnlock_Previews: PreviewProvider {
    static var previews: some View {
        AfterUnlock()
    }
}
