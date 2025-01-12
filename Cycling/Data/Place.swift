//
//  Place.swift
//  Cycling
//
//  Created by Saim Khan on 9/16/24.
//

import SwiftUI

struct Place: Identifiable {
    var id: UUID = .init()
    
    var name: String
    var state: String
    var country: String
    var geography: String
    var image: Image?
    
    var intro: String
    var articles: [Article]
    var landmarks: [Landmark]
    
    var routes: [Route]
}
