//
//  Route.swift
//  Cycling
//
//  Created by Saim Khan on 9/16/24.
//

import SwiftUI

struct Route {
    var name: String
    var intro: String
    var image: Image?
    var distance: Double
    var elevationGain: Double
    var rating: Rating
    var avgTime: String
    var places: [Place]
    
    // implement route map storage
}

enum Rating: String, CaseIterable, Codable {
    case beginner
    case intermediate
    case advanced
}
