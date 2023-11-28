//
//  ContentView.swift
//  Landmarks
//
//  Created by Lisandro Diaz Di Meo on 24/11/2023.
//

import SwiftUI

struct LandmarkDetails: View {
    var landmark: Landmark
    
    var body: some View {
        VStack {
            ParkView(coordinates: landmark.locationCoordinates)
                .frame(height: 300)
            CircleImage(imageName: landmark.imageName)
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                Divider()
                
                
                Text("About \(landmark.name)")
                    .font(.title2)
                ScrollView {
                    Text(landmark.description)
                }
            }
            .padding()
            Spacer()
        }
    }

}

struct LandmarkDescription_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetails(landmark: turtleRock)
    }
}
