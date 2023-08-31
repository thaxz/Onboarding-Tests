//
//  ContentView.swift
//  OnboardingTests
//
//  Created by thaxz on 31/08/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Text("Home Screen")
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            Text("Bookmark Screen")
                .tabItem {
                    Image(systemName: "bookmark")
                    Text("Bookmark")
                }
            Text("Settings Screen")
                .tabItem {
                    Image(systemName: "gearshape")
                    Text("Settings")
                }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
