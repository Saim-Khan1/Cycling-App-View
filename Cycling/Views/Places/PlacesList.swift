//
//  PlacesList.swift
//  Cycling
//
//  Created by Saim Khan on 15/06/2022.
//

import SwiftUI

class Theme {
    static func navigationBarColors(background : UIColor?,
       titleColor : UIColor? = nil, tintColor : UIColor? = nil ){
        
        let navigationAppearance = UINavigationBarAppearance()
        navigationAppearance.configureWithTransparentBackground()
        
        navigationAppearance.titleTextAttributes = [.foregroundColor: titleColor ?? .black]
        navigationAppearance.largeTitleTextAttributes = [.foregroundColor: titleColor ?? .black]
       
        UINavigationBar.appearance().standardAppearance = navigationAppearance
        UINavigationBar.appearance().compactAppearance = navigationAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navigationAppearance

        UINavigationBar.appearance().tintColor = tintColor ?? titleColor ?? .black
    }
}
    
struct PlacesList: View {
    init(){
           Theme.navigationBarColors(background: .clear, titleColor: .black)
        }
    var body: some View {
        NavigationView {
            List {
                NavigationLink {
                    CityView()
                } label: {
                    PlaceCard()
                }
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .navigationTitle("Places")
            .navigationBarItems(

                trailing: Button(action: {
                // Actions
                }, label: { Image(systemName: "square.and.arrow.up") })
            )
        }
    }
}



struct PlacesList_Previews: PreviewProvider {
    static var previews: some View {
        PlacesList()
    }
}
