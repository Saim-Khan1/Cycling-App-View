//
//  PlacesList.swift
//  Cycling
//
//  Created by Saim Khan on 9/16/24.
//

import SwiftUI

struct PlacesList: View {
    
    var vm = ViewModel()
    
    @Namespace() var namespace
    
    var body: some View {
        NavigationStack {
            ScrollView {
                ForEach(vm.places) { place in
                    NavigationLink {
                        PlaceDetailView(place: place)
                            .navigationTransition(
                                .zoom(
                                    sourceID: place.id,
                                    in: namespace
                                )
                            )
                    } label: {
                        PlaceView(place: place)
                            .padding(7)
                            .foregroundStyle(Color.primary)
                    }
                    .matchedTransitionSource(id: place.id, in: namespace)
                }
                .navigationTitle("Places")
                .padding(.bottom, 35)
            }
        }
    }
}

#Preview {
    PlacesList()
}
