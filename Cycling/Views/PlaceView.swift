//
//  PlaceView.swift
//  Cycling
//
//  Created by Saim Khan on 9/16/24.
//

import SwiftUI

struct PlaceView: View {
    
    var place: Place
    
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading) {
                Text("\(place.state), \(place.country)")
                    .font(.system(size: 14))
                    .foregroundColor(.secondary)
                    .blendMode(.luminosity)
                
                Text(place.name)
                    .font(.system(size: 30, design: .serif))
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    .padding(.bottom, 0.1)
                
                HStack {
                    Image(systemName: "map")
                    Text("\(place.routes.count) Routes • \(place.geography)")
                }
                .font(.system(size: 14))
            }
            .padding(.horizontal, 12)
            .padding(.top, 10)
            
            if let image = place.image {
                VStack {
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .if(place.name == "Aspen") { view in
                            view
                                .offset(y: 40)
                        }
                }
                .frame(height: 160)
                .clipped()
                .cornerRadius(12)
                .padding(6)
            }
        }
        .frame(width: UIScreen.main.bounds.width - 35)
        .background {
            VStack {
                if let image = place.image {
                    image
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width + 50, height: 600)
                        .aspectRatio(contentMode: .fill)
                        .if(place.name == "Aspen") { view in
                            view
                                .offset(y: 70)
                        }
                        .if(place.name == "San Francisco") { view in
                            view
                                .offset(y: -80)
                        }
                        .blur(radius: 50, opaque: true)
                        .opacity(0.65)
                }
            }
            .frame(maxWidth: UIScreen.main.bounds.width - 35)
            .clipped()
        }
        .cornerRadius(15)
        .overlay(alignment: .topTrailing) {
            Button {} label: {
                Image(systemName: "ellipsis.circle")
            }
            .foregroundStyle(.white)
            .padding()
        }
//        .background(Color.black.opacity(0.5).cornerRadius(15))
//        .colorScheme(.dark)
    }
}

//#Preview {
//    PlaceView()
//}

extension View {
    @ViewBuilder func `if`<Content: View>(_ condition: Bool, transform: (Self) -> Content) -> some View {
        if condition {
            transform(self)
        } else {
            self
        }
    }
}
