//
//  NavigationGraph.swift
//  Landmarks
//
//  Created by Lisandro Diaz Di Meo on 28/11/2023.
//

import Foundation
import SwiftUI

final class NavigationGraph: ObservableObject {
    
    @Published var navPath = NavigationPath()
    
    func navigate(to destination: Route) {
        DispatchQueue.main.async {
            self.navPath.append(destination)
        }
    }
    
    func navigateBack() {
        DispatchQueue.main.async {
            self.navPath.removeLast()
        }
    }
    
    func navigateRoot() {
        DispatchQueue.main.async {
            self.navPath.removeLast(self.navPath.count)
        }
    }
}
