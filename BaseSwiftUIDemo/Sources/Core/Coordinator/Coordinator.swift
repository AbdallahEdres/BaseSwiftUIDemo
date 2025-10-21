//
//  Coordinator.swift
//  BaseSwiftUI
//
//  Created by Abdallah Edres on 21/10/2025.
//

import Foundation
import SwiftUI

protocol Coordinator: ObservableObject, AnyObject {
    associatedtype Route: RouteProtocol
    
    var path: NavigationPath { get set }
    var sheet: Route? { get set }
    var childrenCoordinators: [any Coordinator] { get set }
    
    func start() -> AnyView
    func push(_ route: Route)
    func pop()
    func popToRoot()
    func present(_ route: Route)
    func dismiss()
    func viewForRoute(_ route: Route) -> AnyView
}

extension Coordinator {
    func pop() {
        if path.count > 0 {
            path.removeLast()
        }
    }
    
    func push(_ route: Route) {
        path.append(route)
    }
    
    func popToRoot() {
        path = NavigationPath()
    }
    
    func present(_ route: Route) {
        self.sheet = route
    }
    
    func dismiss() {
        sheet = nil
    }
}
