//
//  CityView.swift
//  Cycling
//
//  Created by Saim Khan on 15/06/2022.
//

import SwiftUI
import UIKit

struct CityView: View {
    var body: some View {
        ScrollView {
            ZStack {
                Image("San Francisco")
                    .resizable()
                    .frame(height: 350)
                    .aspectRatio(contentMode: .fit)
                    .mask(
                        LinearGradient(
                            gradient:
                                    Gradient(stops: [
                                        .init(color: Color.primary, location: 0),
                                        .init(color: Color.primary, location: 0.78),
                                        .init(color: Color.primary.opacity(0), location: 1)
                                    ]),
                            startPoint: .top, endPoint: .bottom
                        )
                    )
            }
            VStack(alignment: .leading) {
                Text("California, US")
                    .font(.system(size: 13))
                    .foregroundColor(.secondary)
                
                Text("San Francisco")
                    .font(.system(size: 36, design: .serif))
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    .padding(.bottom, 0.1)
                
                HStack {
                    Image(systemName: "map")
                    Text("12 Routes • Coastal")
                }
                .font(.system(size: 13))
                
                Text("With strong cycling infrastructure and spectacular terrain just over the Golden Gate Bridge, cyclists enjoy one of the best bike-friendly cities.")
                    .font(.system(size: 15))
                    .lineSpacing(4)
                    .foregroundColor(Color(UIColor.lightGray))
                    .multilineTextAlignment(.leading)
                    .padding(.top, 10)
                
                Text("Noteworthy")
                    .font(.headline)
                    .padding(.top)
                
                NavigationView {
                    List {
                        NavigationLink {
                            RouteView()
                        } label: {
                            HStack(alignment: .center) {
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color(red: 53/255, green: 62/255, blue: 54/255))
                                    .frame(width: 41, height: 41)
                                    .padding(.trailing, 1)
                                    .overlay(
                                        Image(systemName: "cloud.fog")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(height: 21)
                                            .foregroundColor(Color(red: 128/255, green: 176/255, blue: 126/255))
                                    )
                                VStack(alignment: .leading, spacing: 0) {
                                    Text("Carl the Fog")
                                        .font(.subheadline)
                                        .fontWeight(.semibold)
                                        .padding(.bottom, 3)
                                    Text("Layering for rides is an art with the micro-climates of the Bay. Here's tips from the locals.")
                                        .font(.system(size: 11.5))
                                        .lineSpacing(2)
                                        .foregroundColor(Color(UIColor.lightGray))
                                        
                                }
                            }
                        }
                        .listRowInsets(.init(top: 10,
                                             leading: 12,
                                             bottom: 10,
                                             trailing: 12))
                        NavigationLink {
                            RouteView()
                        } label: {
                            HStack(alignment: .center) {
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color(red: 53/255, green: 62/255, blue: 54/255))
                                    .frame(width: 41, height: 41)
                                    .padding(.trailing, 1)
                                    .overlay(
                                        Image(systemName: "binoculars")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(height: 21)
                                            .foregroundColor(Color(red: 128/255, green: 176/255, blue: 126/255))
                                    )
                                VStack(alignment: .leading, spacing: 0) {
                                    Text("Diverse Scenery")
                                        .font(.subheadline)
                                        .fontWeight(.semibold)
                                        .padding(.bottom, 3)
                                    Text("From the Golden Gate bridge to the Redwoods, discover the most photographed places.")
                                        .font(.system(size: 11.5))
                                        .lineSpacing(2)
                                        .foregroundColor(Color(UIColor.lightGray))
                                        
                                }
                            }
                        }
                        .listRowInsets(.init(top: 10,
                                             leading: 12,
                                             bottom: 10,
                                             trailing: 12))
                        
                        NavigationLink {
                            RouteView()
                        } label: {
                            HStack(alignment: .center) {
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color(red: 53/255, green: 62/255, blue: 54/255))
                                    .frame(width: 41, height: 41)
                                    .padding(.trailing, 1)
                                    .overlay(
                                        Image(systemName: "mappin")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(height: 21)
                                            .foregroundColor(Color(red: 128/255, green: 176/255, blue: 126/255))
                                    )
                                VStack(alignment: .leading, spacing: 0) {
                                    Text("Hawk Hill")
                                        .font(.subheadline)
                                        .fontWeight(.semibold)
                                        .padding(.bottom, 3)
                                    Text("Try beating these KOM's on this favorite local climb right over the Golden Gate bridge.")
                                        .font(.system(size: 11.5))
                                        .lineSpacing(2)
                                        .foregroundColor(Color(UIColor.lightGray))
                                        
                                }
                            }
                        }
                        .listRowInsets(.init(top: 10,
                                             leading: 12,
                                             bottom: 10,
                                             trailing: 12))
                    }
                    .padding(.horizontal, -20)
                    .offset(y: -32)
                }
                
                VStack(alignment: .leading){
                    HStack(alignment: .bottom) {
                        Text("Picturesque")
                            .font(.headline)
                        .padding(.top)
                        Spacer()
                        Text("See All")
                            .font(.body)
                            .foregroundColor(Color(red: 128/255, green: 176/255, blue: 126/255))
                            
                    }
                    
                    Image("Presidio")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 360)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding(.top, 3)
                }
                .offset(y: -170)
            }
            .offset(y: -100)
            .padding(.horizontal)
        }
             
        .ignoresSafeArea()
    }
}

struct CityView_Previews: PreviewProvider {
    static var previews: some View {
        CityView()
    }
}

