//
//  CircleImage.swift
//  Landmarks
//
//  Created by Lisandro Diaz Di Meo on 24/11/2023.
//

import SwiftUI

struct CircleImage: View {
    var imageName: String
    var body: some View {
        Image(imageName)
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(imageName: "turtlerock")
    }
}
