//
//  ViewModel.swift
//  Cycling
//
//  Created by Saim Khan on 9/16/24.
//

import Foundation
import SwiftUI

@Observable
class ViewModel {
    let places: [Place] = [
        Place(
            name: "Aspen",
            state: "Colorado",
            country: "US",
            geography: "Mountainous",
            image: Image("Aspen"),
            intro: "Known for its scenic beauty and mountain routes, Aspen offers cyclists a blend of challenging climbs and stunning alpine views, whether riding through the valleys or ascending into the Rockies.",
            articles: [],
            landmarks: [],
            routes: []
        ),
        
        Place(
            name: "San Francisco",
            state: "California",
            country: "US",
            geography: "Coastal",
            image: Image("San Francisco"),
            intro: "With strong cycling infrastructure and spectacular terrain just over the Golden Gate Bridge, cyclists enjoy one of the best bike-friendly cities.",
            articles: [],
            landmarks: [],
            routes: []
        ),
        
        Place(
            name: "Mallorca",
            state: "Balearic Islands",
            country: "Spain",
            geography: "Coastal",
            image: Image("Mallorca"),
            intro: "Mallorca is a cycling haven with its mix of coastal roads, rolling hills, and well-maintained routes. Cyclists can explore serene Mediterranean landscapes, with mild weather year-round making it a top destination for riders of all levels.",
            articles: [],
            landmarks: [],
            routes: []
        ),
    ]
}
