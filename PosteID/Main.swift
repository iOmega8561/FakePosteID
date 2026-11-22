//
//  Login.swift
//  PosteID
//
//  Created by Giuseppe Rocco on 17/11/22.
//

import SwiftUI

struct Main: View {
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        GeometryReader { geometry in
            NavigationStack {
                VStack {
                    
                    HStack {
                        
                        if UIDevice.current.localizedModel == "iPhone" {
                            Spacer()
                        } else {
                            Spacer().frame(maxWidth: 20.0)
                        }
                        
                        VStack {
                            Text("Dashboard SPID")
                                .font(UIDevice.current.localizedModel == "iPhone" ? .system(size: 37):.system(size: 40))
                                .fontWeight(.bold)
                                .offset(x: UIDevice.current.localizedModel == "iPhone" ? 0.0:-15,y: UIDevice.current.localizedModel == "iPhone" ? 0.0:25)
                            
                            Rectangle()
                                .fill(Color("PosteYellow"))
                                .opacity(0.9)
                                .overlay() {
                                    Text("Ultimo accesso 15 NOV 2022 alle ore 14:41")
                                        .foregroundColor(.black)
                                }
                                .frame(maxWidth: 340.0, maxHeight: 25)
                                .cornerRadius(20.0)
                                .shadow(color: Color("PosteYellow"), radius: 4)
                                .offset(y: UIDevice.current.localizedModel == "iPhone" ? -20.0:0.0)
                        }
                        Spacer()
                        
                        if UIDevice.current.localizedModel != "iPhone" {
                            
                            HStack {
                                NavigationLink(destination: Settings()) {
                                    Rectangle()
                                        .fill(Color("PosteYellow"))
                                        .opacity(0.9)
                                        .frame(maxWidth: 150.0, maxHeight: 80.0)
                                        .cornerRadius(20.0)
                                        .shadow(color: Color("PosteYellow"), radius: 4)
                                }
                                
                                Spacer().frame(maxWidth: 40.0)
                                
                                NavigationLink(destination: Settings()) {
                                    Rectangle()
                                        .fill(Color("PosteYellow"))
                                        .opacity(0.9)
                                        .frame(maxWidth: 150.0, maxHeight: 80.0)
                                        .cornerRadius(20.0)
                                        .shadow(color: Color("PosteYellow"), radius: 4)
                                }
                                
                            }.offset(y: 10.0)
                            
                            Spacer().frame(maxWidth: 20.0)
                        }
                    }
                    
                    Spacer()
                    
                    Rectangle()
                        .fill(Color("PosteYellow"))
                        .opacity(0.9)
                        .overlay() {
                            
                            ScrollView {
                                VStack {
                                    Spacer()
                                    ForEach(1..<25) { _ in
                                        
                                        Rectangle()
                                            .fill(Color(colorScheme == .dark ? .black:.white))
                                            .opacity(0.9)
                                            .overlay() {
                                                HStack {
                                                    Spacer().frame(maxWidth: UIDevice.current.localizedModel == "iPhone" ? 9.0:20.0)
                                                    
                                                    Image(systemName: "clock")
                                                        .renderingMode(.template)
                                                        .resizable()
                                                        .scaledToFit()
                                                        .frame(maxWidth:20.0)
                                                        .foregroundColor(colorScheme == .dark ? .white:.black)
                                                    
                                                    
                                                    Text("11:32").foregroundColor(colorScheme == .dark ? .white:.black)
                                                    
                                                    Spacer()
                                                    
                                                    Text("IO - l'app dei servizi pubblici")
                                                        .foregroundColor(colorScheme == .dark ? .white:.black)
                                                    
                                                    Spacer()
                                                    
                                                    if UIDevice.current.localizedModel == "iPhone" {
                                                        Image(systemName: "checkmark.circle")
                                                        Spacer().frame(maxWidth: 9.0)
                                                    } else {
                                                        Text("Autorizzata")
                                                            .foregroundColor(colorScheme == .dark ? .white:.black)
                                                        Spacer().frame(maxWidth: 10.0)
                                                        Image(systemName: "checkmark.circle")
                                                        Spacer().frame(maxWidth: 20.0)
                                                    }
                                                }
                                            }
                                            .frame(maxWidth: UIDevice.current.localizedModel == "iPhone" ? 320.0:670.0, minHeight: 30)
                                            .cornerRadius(10.0)
                                            .shadow(color: colorScheme == .dark ? .black:Color(.sRGBLinear, white: 0, opacity: 0.33), radius: 4)
                                    }
                                }.frame(maxWidth: UIDevice.current.localizedModel == "iPhone" ? 340.0:700.0)
                            }
                        }
                        .frame(maxWidth: UIDevice.current.localizedModel == "iPhone" ? 340.0:700.0, maxHeight: geometry.size.height * 0.7)
                        .cornerRadius(20.0)
                        .shadow(color: Color("PosteYellow"), radius: 4)
                    
                    Spacer()
                }
                .toolbar{
                    Button(action: close) {
                        Rectangle()
                            .fill(.red)
                            .opacity(0.9)
                            .overlay() {
                                Text("⌫ Esci  ")
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
        }
        .onAppear{
            if UIDevice.current.localizedModel == "iPhone" {
                UIDevice.current.setValue( UIInterfaceOrientation.portrait.rawValue, forKey: "orientation")//Forcing the rotation to portrait
                AppDelegate.orientationLock = .portrait // And making sure it stays that way
            }
        }
        .onDisappear {
            if UIDevice.current.localizedModel == "iPhone" {
                AppDelegate.orientationLock = .all // Unlocking the rotation when leaving the view
            }
        }
    }
    
    func close() {
        exit(0)
    }
}

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}
