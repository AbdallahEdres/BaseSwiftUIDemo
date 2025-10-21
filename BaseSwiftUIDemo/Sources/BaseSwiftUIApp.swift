//
//  BaseSwiftUIApp.swift
//  BaseSwiftUI
//
//  Created by Abdallah Edres on 21/10/2025.
//

import SwiftUI

@main
struct BaseSwiftUIApp: App {
    @StateObject private var appCoordinator: AppCoordinator
    private let container: DIContainer
    
    init() {
        let container = DIContainer()
        self.container = container
        _appCoordinator = StateObject(wrappedValue: container.buildAppCoordinator())
    }
    
    var body: some Scene {
        WindowGroup {
            appCoordinator.start()
                .environmentObject(appCoordinator)
                .preferredColorScheme(.light)
        }
    }
}
