//
//  ContentView.swift
//  CoockBookSwiftUI
//
//  Created by marco rodriguez on 29/09/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            
            NavigationViewButton()
                .tabItem {
                    Label("NavigationView", systemImage: "arrow.left")
                }
            
            Lists()
                .tabItem {
                    Label("Lists", systemImage: "list.dash")
                }
            
            SimpleMap()
                .tabItem {
                    Label("Map", systemImage: "map")
                }
            
            CustomAnnotation()
                .tabItem {
                    Label("Map", systemImage: "map.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
