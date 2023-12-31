//
//  LandmarkRepository.swift
//  Landmarks
//
//  Created by Lisandro Diaz Di Meo on 27/11/2023.
//

import Foundation

struct LandmarkRepository {
    func fetchLandmarks() async -> [Landmark] {
        await LandmarkService().fetchLandmarks()
    }
    
}
