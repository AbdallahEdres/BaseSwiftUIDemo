//
//  DIContainer.swift
//  BaseSwiftUI
//
//  Created by Abdallah Edres on 21/10/2025.
//

import Foundation
import SwiftUI

protocol DIContainerProtocol: AnyObject {
    func buildAppCoordinator() -> AppCoordinator
}

final class DIContainer: DIContainerProtocol {
    
    init() {
        print("✅ DIContainer initialized")
    }
    
    deinit {
        print("👋 DIContainer deinitialized")
    }
    
    // MARK: - Coordinators
    func buildAppCoordinator() -> AppCoordinator {
        AppCoordinator(container: self)
    }
    
    // MARK: - ViewModels
    func buildViewModel<C: Coordinator>(coordinator: C) -> BaseViewModel<C> {
        BaseViewModel(coordinator: coordinator)
    }
}
