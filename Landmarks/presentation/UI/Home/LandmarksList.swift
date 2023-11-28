//
//  LandmarksList.swift
//  Landmarks
//
//  Created by Lisandro Diaz Di Meo on 27/11/2023.
//

import SwiftUI

struct LandmarksList: View {
    @ObservedObject
    var viewModel = LandmarkListViewModel()
    
    var body: some View {
        if viewModel.isLoading {
            ProgressView()
        }
        else {
            if #available(iOS 16.0, *) {
                NavigationSplitView {
                    List(viewModel.landmarks) { landmark in
                        NavigationLink {
                            LandmarkDetails(landmark: landmark)
                        } label: {
                            LandmarkRow(landmark: landmark)
                        }
                    }.navigationTitle("Landmarks")
                } detail: {
                    Text("Select a Landmark")
                }
            } else {
                NavigationView {
                    List(viewModel.landmarks) { landmark in
                        NavigationLink(destination: {
                            LandmarkDetails(landmark: landmark)
                        }, label: {
                            LandmarkRow(landmark: landmark)
                        })
                    }
                }
            }
        }
        
    }
}

struct LandmarksList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarksList()
    }
}
