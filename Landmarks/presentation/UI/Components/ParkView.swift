//
//  MapView.swift
//  Landmarks
//
//  Created by Lisandro Diaz Di Meo on 24/11/2023.
//

import SwiftUI
import MapKit


struct ParkView: View {
    
    @State private var region : MKCoordinateRegion
    
    var body: some View {
        Map(coordinateRegion: .constant(region))
    }
    
    init(coordinates: CLLocationCoordinate2D) {
        self.region =  MKCoordinateRegion(
            center: coordinates,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
    
}

extension CLLocationCoordinate2D {
    static let weequahicPark = CLLocationCoordinate2D(latitude: 40.7063, longitude: -74.1973)
    static let empireStateBuilding = CLLocationCoordinate2D(latitude: 40.7484, longitude: -73.9857)
    static let columbiaUniversity = CLLocationCoordinate2D(latitude: 40.8075, longitude: -73.9626)
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        ParkView(coordinates: turtleRock.locationCoordinates)
    }
}

