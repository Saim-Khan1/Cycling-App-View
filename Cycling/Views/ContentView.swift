//
//  ContentView.swift
//  Cycling
//
//  Created by Saim Khan on 9/16/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            PlacesList()
                .tabItem {
                    Label("Places", systemImage: "rectangle.fill.on.rectangle.angled.fill")
                }

            RouteView()
                .tabItem {
                    Label("Itineraries", systemImage: "square.text.square.fill")
                }
            
            RouteView()
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }
        }
    }
}

#Preview {
    ContentView()
}
