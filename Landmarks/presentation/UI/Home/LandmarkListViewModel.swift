//
//  LandmarkListViewModel.swift
//  Landmarks
//
//  Created by Lisandro Diaz Di Meo on 28/11/2023.
//

import Foundation

class LandmarkListViewModel : ObservableObject {
    @Published
    private (set) var landmarks = [Landmark]()
    
    @Published
    private (set) var isLoading = false
    
    private let repository = LandmarkRepository()
    
    init() {
        fetchLandmarks()
    }
    
    func fetchLandmarks() {
        isLoading = true
        DispatchQueue.main.async {
            Task {
                self.landmarks = await self.repository.fetchLandmarks()
                self.isLoading = false
            }
        }
    }
    
}
