//
//  ContentView.swift
//  PosteID
//
//  Created by Giuseppe Rocco on 17/11/22.
//

import SwiftUI

struct Landscape: View {
    @State var PosteIDCode: Int = 0
    
    var body: some View {
        NavigationStack() {
            ZStack {
                
                Circle()
                    .scaledToFit()
                    .frame(maxWidth: 600.0)
                    .foregroundColor(Color("PosteYellow"))
                    .opacity(0.6)
                    .offset(x: -280.0, y: 400.0)
                
                HStack {
                    Spacer()
                    
                    VStack {
                        Spacer()
                        
                        Rectangle()
                            .cornerRadius(5.0)
                            .foregroundColor(Color("PosteYellow"))
                            .frame(maxWidth: 300.0, maxHeight: 100.0)
                            .overlay() {
                                VStack {
                                    Image("PosteIDLogo")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(maxWidth: 280.0)
                                        .border(Color("PosteBlue"))
                                    
                                    
                                }
                            }
                        
                        Text("L'identità digitale di Poste Italiane")
                            .font(.title)
                            .frame(maxWidth: 500.0)
                        
                        Spacer()
                        Spacer()
                        
                    }
                    
                    Spacer()
                    
                    VStack {
                        Spacer()
                        
                        Text("Bentornato Giuseppe!\nInserisci il tuo codice PosteID")
                            .font(.title)
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: 500.0)
                        
                        Spacer()
                        
                        Spacer()
                    }
                    
                    Spacer()
                }
            }
        }.ignoresSafeArea()
    }
}

struct ContentView: View {
    var body: some View {
        GeometryReader { geometry in
             if geometry.size.height > geometry.size.width {
                    Text("Portrait")
             } else {
                    Landscape()
             }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
