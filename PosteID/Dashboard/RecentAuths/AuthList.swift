//
//  RecentAuths.swift
//  PosteID
//
//  Created by Giuseppe Rocco on 18/11/22.
//

import SwiftUI

struct AuthList: View {
    var colorScheme: ColorScheme
    var geometry: GeometryProxy
    
    var body: some View {
        HStack {
            Spacer()
            ScrollView {
                LazyVStack(spacing: 12) {
                    Spacer()
                    ForEach(fakeAuthData) { auth in
                        AuthEntry(colorScheme: colorScheme, auth: auth)
                    }
                    Spacer()
                }.frame(maxWidth: UIDevice.current.localizedModel == "iPhone" ? 340.0:700.0)
            }.scrollIndicators(.hidden)
            
            Spacer()
        }
    }
}

struct AuthList_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
