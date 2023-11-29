//
//  HomeScreen.swift
//  Landmarks
//
//  Created by Lisandro Diaz Di Meo on 28/11/2023.
//

import SwiftUI

struct HomeScreen: View {
    @StateObject var navigationGraph = NavigationGraph()
    
    var body: some View {
        NavigationStack(path: $navigationGraph.navPath) {
            Text("Home sweet home")
                .navigationDestination(for: Route.self) { destination in
                    destination.body
                }
                .onTapGesture {
                    navigationGraph.navigate(to: route)
                }
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
