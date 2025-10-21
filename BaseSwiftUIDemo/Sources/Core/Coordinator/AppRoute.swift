//
//  AppRoute.swift
//  BaseSwiftUI
//
//  Created by Abdallah Edres on 21/10/2025.
//

import Foundation

enum AppRoute: RouteProtocol {
    case splash
    case home
    case settings
    
    var title: String {
        switch self {
        case .splash: return "Splash"
        case .home: return "Home"
        case .settings: return "Settings"
        }
    }
}
