//
//  PlaceDetailView.swift
//  Cycling
//
//  Created by Saim Khan on 9/16/24.
//

import SwiftUI

struct PlaceDetailView: View {
    
    var place: Place
    
    @State private var overscroll: CGFloat = 0.0
    
    var body: some View {
        ScrollView(.vertical) {
            VStack(alignment: .leading) {
                if let image = place.image {
                    image
                        .resizable()
                        .overlay(alignment: .bottom) {
                            if place.name == "San" {
                                LinearGradient(
                                    gradient:
                                        Gradient(stops: [
                                            .init(color: Color(.systemBackground).opacity(0), location: 0),
                                            .init(color: Color(.systemBackground).opacity(0), location: 0.2),
                                            .init(color: Color(.systemBackground), location: 1)
                                        ]),
                                    startPoint: .top, endPoint: .bottom
                                )
                                .frame(height: 200)
                            } else {
                                ZStack(alignment: .bottom) { 
                                    Color(.black)
                                        .frame(height: 250)
                                        .mask {
                                            Rectangle()
                                                .frame(width: 1100, height: 250)
                                                .blur(radius: 60)
                                                .offset(y: 80)
                                        }
                                    .frame(height: 180)
                                }
                            }
                        }
                        .stretchy()
                        .frame(height: 380)
                        .overlay(alignment: .bottomLeading) {
                            VStack(alignment: .leading) {
                                Text("\(place.state), \(place.country)")
                                    .font(.system(size: 14))
                                    .foregroundStyle(.secondary)
                                
                                Text(place.name)
                                    .font(.system(size: 36, design: .serif))
                                    .fontWeight(.bold)
                                    .multilineTextAlignment(.leading)
                                    .padding(.bottom, 0.1)
                                
                                HStack {
                                    Image(systemName: "map")
                                    Text("\(place.routes.count) Routes • \(place.geography)")
                                }
                                .font(.system(size: 14))
                            }
                            .padding()
                        }
                }
                
                Text(place.intro)
                    .font(.system(size: 15))
                    .lineSpacing(4)
                    .foregroundStyle(Color(UIColor.lightGray))
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal)
                
                Text("Noteworthy")
                    .font(.headline)
                    .padding([.top, .leading])
                
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
                                            .foregroundStyle(.greenAccent)
                                    )
                                VStack(alignment: .leading, spacing: 0) {
                                    Text("Carl the Fog")
                                        .font(.subheadline)
                                        .fontWeight(.semibold)
                                        .padding(.bottom, 3)
                                    Text("Layering for rides is an art with the micro-climates of the Bay. Here's tips from the locals.")
                                        .font(.system(size: 11.5))
                                        .lineSpacing(2)
                                        .foregroundStyle(Color(UIColor.lightGray))
                                        
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
                                            .foregroundStyle(.greenAccent)
                                    )
                                VStack(alignment: .leading, spacing: 0) {
                                    Text("Diverse Scenery")
                                        .font(.subheadline)
                                        .fontWeight(.semibold)
                                        .padding(.bottom, 3)
                                    Text("From the Golden Gate bridge to the Redwoods, discover the most photographed places.")
                                        .font(.system(size: 11.5))
                                        .lineSpacing(2)
                                        .foregroundStyle(Color(UIColor.lightGray))
                                        
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
                                            .foregroundStyle(.greenAccent)
                                    )
                                VStack(alignment: .leading, spacing: 0) {
                                    Text("Hawk Hill")
                                        .font(.subheadline)
                                        .fontWeight(.semibold)
                                        .padding(.bottom, 3)
                                    Text("Try beating these KOM's on this favorite local climb right over the Golden Gate bridge.")
                                        .font(.system(size: 11.5))
                                        .lineSpacing(2)
                                        .foregroundStyle(Color(UIColor.lightGray))
                                        
                                }
                            }
                        }
                        .listRowInsets(.init(top: 10,
                                             leading: 12,
                                             bottom: 10,
                                             trailing: 12))
                    }
                    .offset(y: -32)
                }
                
                VStack(alignment: .leading){
                    HStack(alignment: .bottom) {
                        Text("Picturesque")
                            .font(.headline)
                            .padding([.top, .leading])
                        Spacer()
                        Text("See All")
                            .font(.body)
                            .foregroundStyle(.greenAccent)
                            .padding(.trailing)
                            
                    }
                    
                    Image("Presidio")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding(.top, 3)
                        .padding(.horizontal)
                }
                .offset(y: -170)
            }
            .background(Color.black)
        }
        .edgesIgnoringSafeArea(.top)
    }
}

#Preview {
    let vm = ViewModel()
    PlaceDetailView(place: vm.places[1])
}

struct Stretchy: ViewModifier {
    var isTop = true

    func heightFor(_ reader: GeometryProxy) -> CGFloat {
        let height = reader.size.height
        let frame  = reader.frame(in: .global)
        let deltaY = isTop ? frame.minY : (UIScreen.main.bounds.size.height - frame.maxY)
        return height + max(0, deltaY)
    }

    func offsetFor(_ reader: GeometryProxy) -> CGFloat {
        guard isTop else { return 0 }
        let frame  = reader.frame(in: .global)
        let deltaY = frame.minY
        return min(0, -deltaY)
    }

    func body(content: Content) -> some View {
        GeometryReader { reader in
            Color.clear
                .overlay(content.aspectRatio(contentMode: .fill), alignment: .center)
                .clipped()
                .frame(height: heightFor(reader))
                .offset(y: offsetFor(reader))
        }
    }
}

extension View {
    func stretchy(isTop: Bool = true) -> some View {
        self.modifier(Stretchy(isTop: isTop))
    }
}
