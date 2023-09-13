//
//  PlaceCard.swift
//  Cycling
//
//  Created by Saim Khan on 16/06/2022.
//

import SwiftUI

struct PlaceCard: View {
    var body: some View {
        VStack(spacing: 0) {
            HStack(alignment: .top, spacing: 0) {
                VStack(alignment: .leading) {
                    Text("California, US")
                        .font(.system(size: 14))
                        .foregroundColor(.secondary)
                    
                    Text("San Francisco")
                        .font(.system(size: 32, design: .serif))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                        .padding(.bottom, 0.1)
                    
                    HStack {
                        Image(systemName: "map")
                        Text("12 Routes • Coastal")
                    }
                    .font(.system(size: 14))
                }
                Spacer()
                Image(systemName: "ellipsis.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 24)
            }
            .padding(.horizontal, 4)
            .padding(.bottom, 15)
            .padding(.top, 5)
            Image("San Francisco")
                .resizable()
                .scaledToFill()
                .frame(maxWidth: .infinity)
                .frame(height: 175, alignment: .center)
                .clipped()
                .clipShape(
                    RoundedRectangle(cornerRadius: 10)
                )
        }
        .padding(10)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .background(.regularMaterial)
                .saturation(2)
                .background(
                    Image("SF Background")
                        .resizable()
                        .scaledToFill()
                        .cornerRadius(8)
                )
            )
    }
}

struct PlaceCard_Previews: PreviewProvider {
    static var previews: some View {
        PlaceCard()
    }
}
