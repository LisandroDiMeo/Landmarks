//
//  Coordinates.swift
//  Landmarks
//
//  Created by Lisandro Diaz Di Meo on 27/11/2023.
//

import Foundation

struct Coordinates: Hashable, Codable {
    init(latitude: Double, longitude: Double) {
        self.latitude = latitude
        self.longitude = longitude
    }
    
    var latitude: Double
    var longitude: Double
}
