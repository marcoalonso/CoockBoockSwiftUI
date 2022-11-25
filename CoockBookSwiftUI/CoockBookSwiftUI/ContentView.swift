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
            
            ListsCRUD()
                .tabItem {
                    Label("TASKS", systemImage: "text.badge.checkmark")
                }
            
            Lists()
                .tabItem {
                    Label("Lists", systemImage: "list.dash")
                }
            
            SimpleMap()
                .tabItem {
                    Label("Map", systemImage: "map")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
