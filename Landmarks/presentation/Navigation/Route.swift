//
//  Route.swift
//  Landmarks
//
//  Created by Lisandro Diaz Di Meo on 28/11/2023.
//

import SwiftUI

struct Route : Hashable {
    static func == (lhs: Route, rhs: Route) -> Bool {
        lhs.routeId == rhs.routeId
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(routeId)
    }
    
    var routeId: String
    
    var body: AnyView
    
    init(routeId: String, view: AnyView) {
        self.routeId = routeId
        self.body = view
    }
    
}

struct Home : View {
    var body: some View {
        Text("Hello")
    }
}

let route = Route(routeId: "Home", view: AnyView(Home()))
