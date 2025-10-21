//
//  AppCoordinator.swift
//  BaseSwiftUI
//
//  Created by Abdallah Edres on 21/10/2025.
//

import Foundation
import SwiftUI
import Combine

protocol AppCoordinatorProtocol: Coordinator where Route == AppRoute {
    func restart()
    func changeRoot(to route: Route)
}

final class AppCoordinator: AppCoordinatorProtocol {
    @Published var path: NavigationPath = .init()
    @Published var sheet: Route?
    @Published var root: Route = .splash
    
    weak var container: DIContainer?
    var childrenCoordinators: [any Coordinator] = []
    
    init(container: DIContainer) {
        self.container = container
    }
    
    func start() -> AnyView {
        viewForRoute(root)
    }
    
    func changeRoot(to route: Route) {
        root = route
    }
    
    func restart() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) { [weak self] in
            guard let self else { return }
            withAnimation(.easeInOut(duration: 0.3)) { [weak self] in
                guard let self else { return }
                sheet = nil
                path = .init()
                root = .splash
            }
        }
    }
    
    func viewForRoute(_ route: AppRoute) -> AnyView {
        switch route {
        case .splash:
            return AnyView(SplashView())
        case .home:
            return AnyView(Text("Home View"))
        case .settings:
            return AnyView(Text("Settings View"))
        }
    }
}
