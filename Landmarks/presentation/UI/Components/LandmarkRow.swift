//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Lisandro Diaz Di Meo on 27/11/2023.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image.resizable()
                .frame(width:50,height:50)
            Text(landmark.name)
            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    
    static var previews: some View {
        LandmarkRow(landmark: turtleRock)
    }
}
