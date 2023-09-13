//
//  ContentView.swift
//  Cycling
//
//  Created by Saim Khan on 15/06/2022.
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
        .accentColor(Color(red: 128/255, green: 176/255, blue: 126/255))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .colorScheme(.dark)
    }
}
